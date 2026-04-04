using UnityEngine;
using UnityEngine.UI;
using System.Collections;
using Unity.Cinemachine; // Required for Cinemachine 3 Impulse

public class PlayerHealth : MonoBehaviour
{
    [Header("Health Stats")]
    public float maxHealth = 100f;
    private float _currentHealth;
    [SerializeField] private Image healthFillImage;

    [Header("Damage Visuals")]
    [SerializeField] private Image hurtOverlay; // Full-screen Red Image
    [SerializeField] private float overlayFlashSpeed = 5f;
    
    [Header("Cinemachine Shake")]
    [Tooltip("Requires CinemachineImpulseSource component on this GameObject")]
    private CinemachineImpulseSource _impulseSource;

    [Header("Settings")]
    public string enemyAttackTag = "EnemyAttack";
    public bool IsInvulnerable { get; set; }
    
    [Header("Death UI Settings")]
    [SerializeField] private CanvasGroup deathCanvas; 
    [SerializeField] private float deathFadeDelay = 2.0f; 
    [SerializeField] private float fadeDuration = 1.5f;

    private bool _isFlinching = false;
    private bool _isDead = false;
    
    private PlayerAnimationHandler _animHandler;
    private PlayerController _playerController;
    private CinematicParry _parryScript;

    private Coroutine _pendingDamageCoroutine;
    private Coroutine _hurtOverlayCoroutine;
    
    [Header("Advanced I-Frames")]
    [SerializeField] private float postHitInvulnDuration = 0.4f; // Safety window after getting hit
    private bool _isPostHitInvulnerable = false;

    void Start() 
    {
        _currentHealth = maxHealth;
        _animHandler = GetComponent<PlayerAnimationHandler>();
        _playerController = GetComponent<PlayerController>();
        _parryScript = GetComponent<CinematicParry>();
        _impulseSource = GetComponent<CinemachineImpulseSource>();
        
        if (deathCanvas != null) deathCanvas.gameObject.SetActive(false);
        
        // Initialize Overlay as transparent
        if (hurtOverlay != null) 
        {
            Color c = hurtOverlay.color;
            c.a = 0;
            hurtOverlay.color = c;
        }
        
        UpdateUI();
    }

    private void TriggerHurtEffects()
    {
        // 1. Cinemachine Impulse Shake
        if (_impulseSource != null)
        {
            _impulseSource.GenerateImpulse();
        }

        // 2. Red Overlay Flash
        if (hurtOverlay != null)
        {
            if (_hurtOverlayCoroutine != null) StopCoroutine(_hurtOverlayCoroutine);
            _hurtOverlayCoroutine = StartCoroutine(ProcessHurtOverlay());
        }
    }

    private IEnumerator ProcessHurtOverlay()
    {
        // Set to visible red alpha
        Color c = hurtOverlay.color;
        c.a = 0.5f; 
        hurtOverlay.color = c;

        // Fade out over time
        while (hurtOverlay.color.a > 0)
        {
            c = hurtOverlay.color;
            c.a -= Time.deltaTime * overlayFlashSpeed;
            hurtOverlay.color = c;
            yield return null;
        }
    }

    public void TakeDamage(float amount) 
    {
        // Check ALL invulnerability states
        if (_isDead || _isFlinching || IsInvulnerable || _isPostHitInvulnerable || _playerController.IsInvulnerable()) 
            return;

        _currentHealth -= amount;
        _currentHealth = Mathf.Max(_currentHealth, 0);
        UpdateUI();

        TriggerHurtEffects();
    
        if (HitstopManager.Instance != null)
            HitstopManager.Instance.ExecuteHitstop(false);

        if (_currentHealth <= 0) 
        {
            Die();
            return;
        }

        // Force Melo back and cancel her current actions
        if (_playerController != null) 
        {
            _playerController.ForceCancelAttack();
            _playerController.AddForceBackwards(); 
        }

        if (_animHandler != null) _animHandler.PlayGotHit();

        // Start the combined Recovery and Post-Hit Safety window
        StartCoroutine(RecoveryRoutine());
    }

    private void Die() 
    {
        _isDead = true;
        IsInvulnerable = true;

        if (_playerController != null) 
        {
            _playerController.enabled = false;
            var rb = GetComponent<Rigidbody>();
            if (rb != null) rb.linearVelocity = Vector3.zero;
        }

        if (_animHandler != null) _animHandler.PlayDeath(); 

        if (deathCanvas != null) StartCoroutine(FadeInDeathUI());
    }
    
    public void RestoreHealth(float amount)
    {
        if (_isDead) return;

        _currentHealth += amount;
        _currentHealth = Mathf.Min(_currentHealth, maxHealth); // Clamp to max health
        UpdateUI();
    
        // Optional: Add a small green flash or VFX here if you want
        Debug.Log("Health Restored: " + amount);
    }

    private IEnumerator FadeInDeathUI() 
    {
        yield return new WaitForSeconds(deathFadeDelay);

        deathCanvas.gameObject.SetActive(true);
        CanvasGroup group = deathCanvas.GetComponent<CanvasGroup>();

        if (group != null) 
        {
            group.alpha = 0;
            while (group.alpha < 1) 
            {
                group.alpha += Time.deltaTime / fadeDuration;
                yield return null;
            }
        }
    }

    private IEnumerator RecoveryRoutine() 
    {
        _isFlinching = true;
        _isPostHitInvulnerable = true; // Use this to block further damage
        IsInvulnerable = true;

        // 1. HARD LOCK: The time Melo is stuck in the 'Hurt' animation
        yield return new WaitForSeconds(0.15f); 

        // 2. THE RESET: Allow player to move again
        if (_playerController != null) 
        {
            _playerController.EndHurtLock(); 
        }
        _isFlinching = false;

        // 3. GRACE PERIOD: Melo can move, but still can't be damaged for a split second
        // This prevents a single hitbox that stays active too long from hitting twice.
        yield return new WaitForSeconds(postHitInvulnDuration);

        _isPostHitInvulnerable = false;
        IsInvulnerable = false;
    }

    private void UpdateUI() 
    { 
        if (healthFillImage) healthFillImage.fillAmount = _currentHealth / maxHealth; 
    }

    private void OnTriggerEnter(Collider other) 
    {
        if (_isDead || IsInvulnerable || _isFlinching) return;

        if (other.CompareTag(enemyAttackTag)) 
        {
            EnemyAttack attacker = other.GetComponentInParent<EnemyAttack>();
            if (attacker != null) 
            {
                if (_pendingDamageCoroutine != null) StopCoroutine(_pendingDamageCoroutine);
                _pendingDamageCoroutine = StartCoroutine(WaitAndCheckForParry(15f, attacker));
            }
        }
    }

    private IEnumerator WaitAndCheckForParry(float damageAmount, EnemyAttack attacker) 
    {
        float minBuffer = 0.12f; 
        float elapsed = 0f;

        while (elapsed < minBuffer) 
        {
            if (_parryScript != null && (_parryScript.IsParrying || _parryScript._inCinematic)) 
            {
                _pendingDamageCoroutine = null;
                yield break; 
            }
            elapsed += Time.unscaledDeltaTime; 
            yield return null;
        }

        while (attacker != null && attacker.isAttacking) 
        {
            if (_parryScript != null && (_parryScript.IsParrying || _parryScript._inCinematic)) 
            {
                _pendingDamageCoroutine = null;
                yield break;
            }
            yield return null;
        }

        if (_isDead || IsInvulnerable || (_parryScript != null && _parryScript._inCinematic)) 
        {
            _pendingDamageCoroutine = null;
            yield break;
        }

        TakeDamage(damageAmount);
        _pendingDamageCoroutine = null;
    }
}