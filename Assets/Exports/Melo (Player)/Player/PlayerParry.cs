using UnityEngine;
using UnityEngine.InputSystem;
using System.Collections;
using Unity.Cinemachine;

[RequireComponent(typeof(AudioSource))]
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

    [Header("VFX Calibration")]
    [SerializeField] private GameObject parryVFXPrefab; 
    [SerializeField] private float vfxSpawnDistance = 0.5f; 
    [SerializeField] private float vfxSpawnHeight = 1.1f;   
    [SerializeField] private float vfxDestroyDelay = 2f;

    [Header("SFX Settings")]
    [SerializeField] private AudioClip parrySuccessSound;
    [Range(0f, 1f)] [SerializeField] private float sfxVolume = 1f;

    private Animator animator;
    private PlayerController playerController;
    private PlayerAnimationHandler animationHandler;
    private AudioSource audioSource;
    private float _timer = 0f;
    private bool _inCinematic = false;

    public bool IsParrying => _timer > 0 && !_inCinematic;

    void Awake() 
    {
        animator = GetComponentInChildren<Animator>();
        playerController = GetComponent<PlayerController>();
        animationHandler = GetComponent<PlayerAnimationHandler>();
        audioSource = GetComponent<AudioSource>();
        
        if (audioSource != null)
            audioSource.velocityUpdateMode = AudioVelocityUpdateMode.Fixed;
        
        ResetTimeScale();
    }

    void OnEnable() 
    { 
        if (parryAction.action != null)
        {
            parryAction.action.Enable(); 
            parryAction.action.performed += OnParryPressed; 
        }
    }

    void OnDisable() 
    {
        ResetTimeScale();
        if (parryAction.action != null)
        {
            parryAction.action.performed -= OnParryPressed;
            parryAction.action.Disable();
        }
    }

    private void OnParryPressed(InputAction.CallbackContext context)
    {
        // Don't allow parry if currently flinching
        if (animationHandler != null && animationHandler.IsFlinching()) return;
        AttemptParry();
    }

    public void AttemptParry() 
    {
        // Don't parry if already doing it, in a cinematic, or game is paused/hitstopped
        if (_timer > 0 || _inCinematic || Time.timeScale < 0.2f) return;
        
        _timer = parryWindow;

        if (playerController) playerController.StartParryLock();
        if (animator) animator.SetTrigger("Parry");
    }

    void Update() 
    {
        // EMERGENCY: If we get hit during parry, abort everything immediately
        if (animationHandler != null && animationHandler.IsFlinching())
        {
            AbortParry();
            return;
        }

        if (_timer > 0) 
        {
            _timer -= Time.deltaTime;

            // If the window expires without a hit
            if (_timer <= 0 && !_inCinematic) 
            {
                // Only unlock if we aren't flinching (safety check)
                if (playerController != null && !animationHandler.IsFlinching()) 
                {
                    playerController.EndParryLock();
                }
            }
        }
    }

    /// <summary>
    /// Resets the parry state immediately. Called by the update loop if the player takes damage.
    /// </summary>
    public void AbortParry()
    {
        _timer = 0;
        if (_inCinematic)
        {
            StopAllCoroutines();
            ResetTimeScale();
            if (parryCamera) parryCamera.gameObject.SetActive(false);
            if (animator) animator.updateMode = AnimatorUpdateMode.Normal;
            _inCinematic = false;
        }
        // Ensure player is unlocked from parry stance so GotHit animation takes priority
        if (playerController) playerController.EndParryLock();
    }

    public void TriggerSuccessfulParry(Animator enemyAnimator) 
    {
        if (_inCinematic || (animationHandler != null && animationHandler.IsFlinching())) return;
        _timer = 0; 

        SpawnParryVFX();
        PlayParrySFX(); 
        
        StartCoroutine(ExecuteSequence(enemyAnimator));
    }

    private void SpawnParryVFX()
    {
        if (parryVFXPrefab != null)
        {
            Vector3 spawnPos = transform.position + (transform.forward * vfxSpawnDistance) + (Vector3.up * vfxSpawnHeight);
            GameObject vfx = Instantiate(parryVFXPrefab, spawnPos, Quaternion.identity);
            
            var ps = vfx.GetComponent<ParticleSystem>();
            if (ps != null) 
            { 
                var main = ps.main; 
                main.useUnscaledTime = true; 
            }
            
            Destroy(vfx, vfxDestroyDelay);
        }
    }

    private void PlayParrySFX()
    {
        if (audioSource != null && parrySuccessSound != null)
        {
            audioSource.PlayOneShot(parrySuccessSound, sfxVolume);
        }
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
        
        // Final unlock
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