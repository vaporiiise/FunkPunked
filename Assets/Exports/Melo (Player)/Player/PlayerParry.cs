using UnityEngine;
using UnityEngine.InputSystem;
using System.Collections;
using Unity.Cinemachine;

public class CinematicParry : MonoBehaviour
{
    [Header("Settings")]
    [SerializeField] private InputActionProperty parryAction;
    [SerializeField] private float parryWindow = 0.35f; 
    [SerializeField] private CinemachineCamera parryCamera;

    private Animator animator;
    private PlayerController playerController;
    private bool _isParrying = false;
    private float _timer = 0f;
    private bool _inCinematic = false;

    // The logic: If timer > 0, we ARE parrying.
    public bool IsParrying => _timer > 0 && !_inCinematic;

    void Awake() {
        animator = GetComponentInChildren<Animator>();
        playerController = GetComponent<PlayerController>();
    }

    void OnEnable() { 
        parryAction.action.Enable(); 
        parryAction.action.performed += _ => AttemptParry(); 
    }

    public void AttemptParry() {
        if (_timer > 0 || _inCinematic || Time.timeScale < 1f) return;
        
        _timer = parryWindow;
        _isParrying = true;

        if (playerController) playerController.StartParryLock();
        if (animator) animator.SetTrigger("Parry");
        
        Debug.Log("<color=cyan><b>[PARRY]</b> Window Opened! Timer: " + parryWindow + "</color>");
    }

    void Update() {
        if (_timer > 0) {
            _timer -= Time.deltaTime;

            // REMOVED TAG CHECK: The window is now purely timer-based.
            // If you press parry, the window IS open for 0.35s no matter what.
        
            if (_timer <= 0) {
                Debug.Log("<color=red><b>[PARRY]</b> Window Expired.</color>");
                if (playerController) playerController.EndParryLock();
            }
        }
    }

    public void TriggerSuccessfulParry(Animator enemyAnimator) {
        if (_inCinematic) return;
        _timer = 0; // Close the active window
        StartCoroutine(ExecuteSequence(enemyAnimator));
    }

    IEnumerator ExecuteSequence(Animator enemyAnimator) {
        _inCinematic = true;
        Debug.Log("<color=green><b>[SUCCESS]</b> Handshake Complete. Starting Cinematic!</color>");

        PlayerHealth health = GetComponent<PlayerHealth>();
        if (health) health.IsInvulnerable = true;

        if (parryCamera) parryCamera.gameObject.SetActive(true);
        if (animator) animator.updateMode = AnimatorUpdateMode.UnscaledTime;
        
        if (enemyAnimator) {
            enemyAnimator.SetTrigger("GotParried");
            enemyAnimator.updateMode = AnimatorUpdateMode.UnscaledTime;
        }

        Time.timeScale = 0.05f;
        yield return new WaitForSecondsRealtime(1.5f);
        
        Time.timeScale = 1f;
        if (parryCamera) parryCamera.gameObject.SetActive(false);
        if (animator) animator.updateMode = AnimatorUpdateMode.Normal;
        if (enemyAnimator) enemyAnimator.updateMode = AnimatorUpdateMode.Normal;
        
        if (playerController) playerController.EndParryLock();
        if (health) health.IsInvulnerable = false;
        _inCinematic = false;
    }
}