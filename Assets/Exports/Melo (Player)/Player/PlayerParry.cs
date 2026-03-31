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

    [Header("Debug")]
    public bool showDebug = true;
    public Renderer debugRenderer; 
    private Color originalColor;

    // --- NEW: AUDIO REFERENCE ---
    private AnimationAudioManager _audioManager;

    private Animator animator;
    private PlayerController playerController;
    private PlayerHealth playerHealth;
    
    private float _parryTimer = 0f;
    private bool _inCinematic = false;

    public bool IsParrying => _parryTimer > 0.01f && !_inCinematic;

    void Awake() {
        animator = GetComponentInChildren<Animator>();
        playerController = GetComponent<PlayerController>();
        playerHealth = GetComponent<PlayerHealth>();
        
        // Grab the Audio Manager from the root
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
        Time.timeScale = 1f;
    }

    private void OnParryPressed(InputAction.CallbackContext ctx) {
        if (_inCinematic || _parryTimer > 0) return;
        
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
        Collider[] hitEnemies = Physics.OverlapBox(
            detectionPoint.position, 
            boxSize / 2, 
            detectionPoint.rotation, 
            enemyLayer
        );

        foreach (Collider col in hitEnemies) {
            EnemyAttack enemyScript = col.GetComponentInParent<EnemyAttack>();
            Animator enemyAnim = col.GetComponentInParent<Animator>();

            // If we detect an enemy in their attack state...
            if (enemyScript != null && enemyScript.isAttacking) {
                TriggerSuccessfulParry(enemyAnim);
                break; 
            }
        }
    }

    public void TriggerSuccessfulParry(Animator enemyAnimator) {
        _parryTimer = 0;
        
        // PLAY PARRY SOUND IMMEDIATELY
        if (_audioManager != null) {
            _audioManager.PlaySound("parry");
        }

        StopAllCoroutines(); 
        StartCoroutine(ExecuteSequence(enemyAnimator));
    }

    public void AbortParry() {
        StopAllCoroutines();
        _parryTimer = 0;
        _inCinematic = false;
        Time.timeScale = 1f;

        if (parryCamera) parryCamera.Priority = 0; 
        
        if (animator) animator.updateMode = AnimatorUpdateMode.Normal;
        if (playerHealth) playerHealth.IsInvulnerable = false;
        if (debugRenderer) debugRenderer.material.color = originalColor;
        if (playerController) playerController.EndParryLock();
    }

    IEnumerator ExecuteSequence(Animator enemyAnimator) {
        _inCinematic = true;
        
        EnemyAttack enemyScript = enemyAnimator.GetComponentInChildren<EnemyAttack>();
        if (enemyScript != null) {
            enemyScript.OnGetParried(); 
        }

        if (playerHealth) playerHealth.IsInvulnerable = true;
        
        if (parryCamera) {
            parryCamera.LookAt = enemyAnimator.transform; 
            parryCamera.Priority = 100; 
        }
        
        // Use UnscaledTime so the animator ignores the slow-mo timeScale
        if (animator) animator.updateMode = AnimatorUpdateMode.UnscaledTime;
        if (enemyAnimator) enemyAnimator.updateMode = AnimatorUpdateMode.UnscaledTime;
        
        Time.timeScale = slowMoTimeScale;
        yield return new WaitForSecondsRealtime(slowMoDuration);

        AbortParry(); 
    }

    private void OnDrawGizmos() {
        if (detectionPoint == null) return;
        Gizmos.color = _parryTimer > 0 ? Color.red : Color.yellow;
        Gizmos.matrix = Matrix4x4.TRS(detectionPoint.position, detectionPoint.rotation, Vector3.one);
        Gizmos.DrawWireCube(Vector3.zero, boxSize);
    }
}