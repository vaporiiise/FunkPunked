using UnityEngine;
using UnityEngine.InputSystem;
using System.Collections;
using Unity.Cinemachine;

public class CinematicParry : MonoBehaviour
{
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

    private Animator animator;
    private PlayerController playerController;
    private PlayerAnimationHandler animationHandler;
    private PlayerHealth playerHealth;
    
    private float _parryTimer = 0f;
    private bool _inCinematic = false;

    public bool IsParrying => _parryTimer > 0 && !_inCinematic;

    void Awake() {
        animator = GetComponentInChildren<Animator>();
        playerController = GetComponent<PlayerController>();
        animationHandler = GetComponent<PlayerAnimationHandler>();
        playerHealth = GetComponent<PlayerHealth>();
        if (debugRenderer) originalColor = debugRenderer.material.color;
    }

    void OnEnable() {
        if (parryAction.action != null) {
            parryAction.action.Enable();
            parryAction.action.performed += OnParryPressed;
        }
    }

    void OnDisable() {
        if (parryAction.action != null) parryAction.action.performed -= OnParryPressed;
    }

    private void OnParryPressed(InputAction.CallbackContext ctx) {
        if (_parryTimer > 0 || _inCinematic || (animationHandler != null && animationHandler.IsFlinching())) return;
        StartCoroutine(ParryWindowRoutine());
    }

    private IEnumerator ParryWindowRoutine() {
        _parryTimer = parryWindow;
        if (showDebug) Debug.Log("<color=green>[PARRY] Window OPEN</color>");
        if (playerController) playerController.StartParryLock();
        if (animator) animator.SetTrigger("Parry");

        while (_parryTimer > 0) {
            _parryTimer -= Time.deltaTime;
            if (showDebug && debugRenderer) debugRenderer.material.color = Color.green;
            yield return null;
        }

        if (!_inCinematic) {
            if (showDebug) {
                Debug.Log("<color=red>[PARRY] Window CLOSED (Missed)</color>");
                if (debugRenderer) debugRenderer.material.color = originalColor;
            }
            if (playerController) playerController.EndParryLock();
        }
    }

    public void TriggerSuccessfulParry(Animator enemyAnimator) {
        StopAllCoroutines(); 
        _parryTimer = 0;
        if (showDebug) Debug.Log("<color=cyan>[PARRY] SUCCESS!</color>");
        StartCoroutine(ExecuteSequence(enemyAnimator));
    }

    IEnumerator ExecuteSequence(Animator enemyAnimator) {
        _inCinematic = true;
        
        EnemyAttack enemyScript = enemyAnimator.GetComponentInChildren<EnemyAttack>();
        if (enemyScript != null) {
            enemyScript.OnGetParried(); 
        }

        if (playerHealth) playerHealth.IsInvulnerable = true;
        if (parryCamera) {
            parryCamera.gameObject.SetActive(true);
            parryCamera.LookAt = enemyAnimator.transform; 
        }
        
        if (animator) animator.updateMode = AnimatorUpdateMode.UnscaledTime;
        if (enemyAnimator) enemyAnimator.updateMode = AnimatorUpdateMode.UnscaledTime;
        
        Time.timeScale = slowMoTimeScale;
        yield return new WaitForSecondsRealtime(slowMoDuration);

        Time.timeScale = 1f;
        if (parryCamera) parryCamera.gameObject.SetActive(false);
        if (animator) animator.updateMode = AnimatorUpdateMode.Normal;
        if (enemyAnimator) enemyAnimator.updateMode = AnimatorUpdateMode.Normal;
        if (playerController) playerController.EndParryLock();
        if (playerHealth) playerHealth.IsInvulnerable = false;
        if (debugRenderer) debugRenderer.material.color = originalColor;
        
        _inCinematic = false;
    }

    public void AbortParry() {
        _parryTimer = 0;
        if (_inCinematic) {
            StopAllCoroutines();
            Time.timeScale = 1f;
            if (parryCamera) parryCamera.gameObject.SetActive(false);
            if (animator) animator.updateMode = AnimatorUpdateMode.Normal;
            if (playerHealth) playerHealth.IsInvulnerable = false;
            _inCinematic = false;
        }
        if (playerController) playerController.EndParryLock();
    }
}