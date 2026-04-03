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

    [Header("Slow-Mo Settings")]
    public float slowMoTimeScale = 0.05f;
    public float slowMoDuration = 1.0f; 

    [Header("VFX Settings")]
    [SerializeField] private GameObject parryVFXPrefab; 
    [SerializeField] private float vfxDestroyTime = 2.0f;

    [Header("Camera Zoom Settings")]
    public CinemachineCamera mainVcam; // Drag your main Vcam here
    public float zoomAmount = 4f;      // Smaller number = closer zoom
    private float _originalZoom;

    private AnimationAudioManager _audioManager;
    private Animator animator;
    private PlayerController playerController;
    private PlayerHealth playerHealth;
    private ParryResourceManager _resource;
    private CinemachineImpulseSource _impulseSource; 
    
    private float _parryTimer = 0f;
    public bool _inCinematic = false;
    private Animator _lastEnemyAnimator; 

    public bool IsParrying => (_parryTimer > 0f || _inCinematic);

    void Awake() {
        animator = GetComponentInChildren<Animator>();
        playerController = GetComponent<PlayerController>();
        playerHealth = GetComponent<PlayerHealth>();
        _resource = GetComponent<ParryResourceManager>();
        _audioManager = GetComponent<AnimationAudioManager>();
        _impulseSource = GetComponent<CinemachineImpulseSource>();
        
        if (mainVcam) _originalZoom = mainVcam.Lens.OrthographicSize;
        CinemachineImpulseManager.Instance.IgnoreTimeScale = true;
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
            yield return null;
        }

        _parryTimer = 0; 
        if (!_inCinematic) {
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
        Destroy(vfx, vfxDestroyTime);
    }

    public void TriggerSuccessfulParry(Animator enemyAnimator, Vector3 impactPoint) {
        _parryTimer = 0;
        if (_audioManager != null) _audioManager.PlaySound("parry");
        if (playerHealth != null) playerHealth.RestoreHealth(20f);

        // --- THE SHAKE ---
        if (_impulseSource != null) {
            _impulseSource.GenerateImpulseAt(impactPoint, Vector3.one * 1.2f); // Beefed up shake
        }

        StopAllCoroutines(); 
        StartCoroutine(ExecuteSequence(enemyAnimator));
    }

    public void AbortParry() {
        _parryTimer = 0;
        _inCinematic = false;
        ResetTimeScaleSafely();

        // --- RESET CAMERA ZOOM ---
        if (mainVcam) mainVcam.Lens.OrthographicSize = _originalZoom;

        if (animator) animator.updateMode = AnimatorUpdateMode.Normal;
        if (_lastEnemyAnimator) {
            _lastEnemyAnimator.updateMode = AnimatorUpdateMode.Normal;
            _lastEnemyAnimator = null;
        }

        if (playerHealth) playerHealth.IsInvulnerable = false;
        if (playerController) playerController.EndParryLock();
    }

    IEnumerator ExecuteSequence(Animator enemyAnimator) {
        _inCinematic = true;
        _lastEnemyAnimator = enemyAnimator; 

        // 1. Force Boss Stagger
        BossAI boss = enemyAnimator.GetComponentInParent<BossAI>();
        if (boss != null) boss.ForceParryStagger(2.0f);

        // 2. CAMERA ZOOM-IN
        if (mainVcam) mainVcam.Lens.OrthographicSize = zoomAmount;

        // 3. Impact Freeze
        Time.timeScale = 0f; 
        yield return new WaitForSecondsRealtime(0.15f); 

        // 4. Early Unlock for Melo
        if (playerController) {
            playerController.EndParryLock();
            playerController.SetActionLock(false);
        }
    
        if (animator) animator.updateMode = AnimatorUpdateMode.UnscaledTime;
    
        Time.timeScale = slowMoTimeScale; 
        yield return new WaitForSecondsRealtime(slowMoDuration);

        AbortParry(); 
    }

    private void ResetTimeScaleSafely() {
        if (HitstopManager.Instance != null && HitstopManager.Instance.IsProcessing) return;
        Time.timeScale = 1f;
    }
}