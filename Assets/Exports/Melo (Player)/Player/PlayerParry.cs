using UnityEngine;
using UnityEngine.InputSystem;
using System.Collections;
using Unity.Cinemachine;

public class CinematicParry : MonoBehaviour
{
    [Header("Detection Settings")]
    [SerializeField] private Transform detectionPoint; 
    [SerializeField] private Vector3 boxSize = new Vector3(2f, 2f, 3f); 
    [SerializeField] private LayerMask enemyLayer; 

    [Header("Settings")]
    [SerializeField] private InputActionProperty parryAction;
    public float parryWindow = 0.35f; 
    public CinemachineCamera parryCamera;

    [Header("Slow-Mo Settings")]
    public float slowMoTimeScale = 0.05f;
    public float slowMoDuration = 1.0f; 

    [Header("VFX Settings")]
    [SerializeField] private GameObject parryVFXPrefab; 
    [SerializeField] private float vfxDestroyTime = 2.0f;

    [Header("Debug")]
    public bool showDebug = true;
    public Renderer debugRenderer; 
    private Color originalColor;

    private AnimationAudioManager _audioManager;
    private Animator animator;
    private PlayerController playerController;
    private PlayerHealth playerHealth;
    private ParryResourceManager _resource;
    
    private float _parryTimer = 0f;
    public bool _inCinematic = false;
    private Animator _lastEnemyAnimator; // Track the enemy to reset them properly

    public bool IsParrying => (_parryTimer > 0f || _inCinematic);

    void Awake() {
        animator = GetComponentInChildren<Animator>();
        playerController = GetComponent<PlayerController>();
        playerHealth = GetComponent<PlayerHealth>();
        _resource = GetComponent<ParryResourceManager>();
        _audioManager = GetComponent<AnimationAudioManager>();
        
        if (debugRenderer) originalColor = debugRenderer.material.color;

        if (parryCamera) {
            parryCamera.Priority = 0; 
            parryCamera.gameObject.SetActive(true);
        }
    }

    void OnEnable() {
        if (parryAction.action != null) {
            parryAction.action.Enable();
            parryAction.action.performed += OnParryPressed;
        }
    }

    void OnDisable() {
        if (parryAction.action != null) parryAction.action.performed -= OnParryPressed;
        ResetTimeScaleSafely();
    }

    private void OnParryPressed(InputAction.CallbackContext ctx) {
        if (_inCinematic || _parryTimer > 0) return;
        if (_resource != null && !_resource.CanParry()) return; 
        if (_resource != null) _resource.ConsumeBar();
    
        StopAllCoroutines(); 
        StartCoroutine(ParryWindowRoutine());
    }

    private IEnumerator ParryWindowRoutine() {
        _parryTimer = parryWindow;
        if (playerController) playerController.StartParryLock();
        if (animator) animator.SetTrigger("Parry");

        while (_parryTimer > 0) {
            CheckForParryCollision();
            _parryTimer -= Time.deltaTime;
            if (showDebug && debugRenderer) debugRenderer.material.color = Color.green;
            yield return null;
        }

        _parryTimer = 0; 
        if (!_inCinematic) {
            if (debugRenderer) debugRenderer.material.color = originalColor;
            if (playerController) playerController.EndParryLock();
        }
    }

    private void CheckForParryCollision() {
        Collider[] hitEnemies = Physics.OverlapBox(detectionPoint.position, boxSize / 2, detectionPoint.rotation, enemyLayer);

        foreach (Collider col in hitEnemies) {
            EnemyAttack enemyScript = col.GetComponentInParent<EnemyAttack>();
            Animator enemyAnim = col.GetComponentInParent<Animator>();

            if (enemyScript != null && enemyScript.isAttacking) {
                Vector3 impactPoint = col.ClosestPoint(detectionPoint.position);
                SpawnParryVFX(impactPoint);
                TriggerSuccessfulParry(enemyAnim, impactPoint);
                break; 
            }
        }
    }

    private void SpawnParryVFX(Vector3 position) {
        if (parryVFXPrefab == null) return;
        GameObject vfx = Instantiate(parryVFXPrefab, position, Quaternion.identity);
        var ps = vfx.GetComponent<ParticleSystem>();
        if (ps != null) {
            var main = ps.main;
            main.useUnscaledTime = true;
        }
        Destroy(vfx, vfxDestroyTime);
    }

    public void TriggerSuccessfulParry(Animator enemyAnimator, Vector3 impactPoint) {
        _parryTimer = 0;
        if (_audioManager != null) _audioManager.PlaySound("parry");
        
        if (playerHealth != null) playerHealth.RestoreHealth(20f);

        var impulse = GetComponent<CinemachineImpulseSource>();
        if (impulse) impulse.GenerateImpulseAt(impactPoint, Vector3.one * 0.3f); 

        StopAllCoroutines(); 
        StartCoroutine(ExecuteSequence(enemyAnimator));
    }

    public void AbortParry() {
        StopAllCoroutines();
        _parryTimer = 0;
        _inCinematic = false;

        ResetTimeScaleSafely();

        if (parryCamera) parryCamera.Priority = 0; 
        
        // CRITICAL FIX: Reset BOTH animators to Normal so they can be frozen by Hitstop
        if (animator) animator.updateMode = AnimatorUpdateMode.Normal;
        if (_lastEnemyAnimator) {
            _lastEnemyAnimator.updateMode = AnimatorUpdateMode.Normal;
            _lastEnemyAnimator = null;
        }

        if (playerHealth) playerHealth.IsInvulnerable = false;
        if (debugRenderer) debugRenderer.material.color = originalColor;
        if (playerController) playerController.EndParryLock();
    }

    IEnumerator ExecuteSequence(Animator enemyAnimator) {
        _inCinematic = true;
        _lastEnemyAnimator = enemyAnimator; // Store reference to reset later

        EnemyAttack enemyScript = enemyAnimator.GetComponentInChildren<EnemyAttack>();
        if (enemyScript != null) enemyScript.OnGetParried(); 

        if (playerHealth) playerHealth.IsInvulnerable = true;

        // Start with a hard freeze
        Time.timeScale = 0f; 
        yield return new WaitForSecondsRealtime(0.15f); 

        // Switch to Unscaled for the cinematic cinematic motion
        if (animator) animator.updateMode = AnimatorUpdateMode.UnscaledTime;
        if (enemyAnimator) enemyAnimator.updateMode = AnimatorUpdateMode.UnscaledTime;
    
        Time.timeScale = slowMoTimeScale;
        yield return new WaitForSecondsRealtime(slowMoDuration);

        AbortParry(); 
    }

    private void ResetTimeScaleSafely() {
        if (HitstopManager.Instance != null && HitstopManager.Instance.IsProcessing) return;
        Time.timeScale = 1f;
    }

    private void OnDrawGizmos() {
        if (detectionPoint == null) return;
        Gizmos.color = _parryTimer > 0 ? Color.red : Color.yellow;
        Gizmos.matrix = Matrix4x4.TRS(detectionPoint.position, detectionPoint.rotation, Vector3.one);
        Gizmos.DrawWireCube(Vector3.zero, boxSize);
    }
}