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

    [Header("Slow Motion Control")]
    public bool useSlowMoOnSuccess = true;
    [Range(0.01f, 1f)] public float slowMoTimeScale = 0.05f;
    public float slowMoDuration = 1.5f;

    private Animator animator;
    private PlayerController playerController;
    private float _timer = 0f;
    private bool _inCinematic = false;

    public bool IsParrying => _timer > 0 && !_inCinematic;

    void Awake() 
    {
        animator = GetComponentInChildren<Animator>();
        playerController = GetComponent<PlayerController>();
        ResetTimeScale();
    }

    void OnEnable() 
    { 
        parryAction.action.Enable(); 
        parryAction.action.performed += _ => AttemptParry(); 
    }

    void OnDisable() 
    {
        ResetTimeScale();
        parryAction.action.Disable();
    }

    public void AttemptParry() 
    {
        if (_timer > 0 || _inCinematic || Time.timeScale < 1f) return;
        
        _timer = parryWindow;

        if (playerController) playerController.StartParryLock();
        if (animator) animator.SetTrigger("Parry");
    }

    void Update() 
    {
        if (_timer > 0) 
        {
            _timer -= Time.deltaTime;
            if (_timer <= 0 && !_inCinematic) 
            {
                if (playerController) playerController.EndParryLock();
            }
        }
    }

    public void TriggerSuccessfulParry(Animator enemyAnimator) 
    {
        if (_inCinematic) return;
        _timer = 0; 
        StartCoroutine(ExecuteSequence(enemyAnimator));
    }

    IEnumerator ExecuteSequence(Animator enemyAnimator) 
    {
        _inCinematic = true;

        PlayerHealth health = GetComponent<PlayerHealth>();
        if (health) health.IsInvulnerable = true;

        if (parryCamera) parryCamera.gameObject.SetActive(true);
        
        if (animator) animator.updateMode = AnimatorUpdateMode.UnscaledTime;
        
        if (enemyAnimator) 
        {
            enemyAnimator.SetTrigger("GotParried");
            enemyAnimator.updateMode = AnimatorUpdateMode.UnscaledTime;
        }

        if (useSlowMoOnSuccess) 
        {
            ApplySlowMo(slowMoTimeScale);
            yield return new WaitForSecondsRealtime(slowMoDuration);
            ResetTimeScale();
        }
        else 
        {
            yield return new WaitForSeconds(0.5f);
        }

        if (parryCamera) parryCamera.gameObject.SetActive(false);
        
        if (animator) animator.updateMode = AnimatorUpdateMode.Normal;
        if (enemyAnimator) enemyAnimator.updateMode = AnimatorUpdateMode.Normal;
        
        if (playerController) playerController.EndParryLock();
        if (health) health.IsInvulnerable = false;
        _inCinematic = false;
    }

    private void ApplySlowMo(float scale)
    {
        Time.timeScale = scale;
        Time.fixedDeltaTime = 0.02f * Time.timeScale;
    }

    private void ResetTimeScale()
    {
        Time.timeScale = 1f;
        Time.fixedDeltaTime = 0.02f;
    }
}