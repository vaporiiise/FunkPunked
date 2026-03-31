using UnityEngine;
using UnityEngine.UI;
using System.Collections;

public class PlayerHealth : MonoBehaviour
{
    [Header("Health Stats")]
    public float maxHealth = 100f;
    private float _currentHealth;
    [SerializeField] private Image healthFillImage;

    [Header("Settings")]
    public string enemyAttackTag = "EnemyAttack";
    public bool IsInvulnerable { get; set; }
    
    [Header("Death UI Settings")]
    [SerializeField] private CanvasGroup deathCanvas; // Drag your Death UI Canvas here
    [SerializeField] private float deathFadeDelay = 2.0f; // Wait for animation to settle
    [SerializeField] private float fadeDuration = 1.5f;

    private bool _isFlinching = false;
    private bool _isDead = false;
    
    private PlayerAnimationHandler _animHandler;
    private PlayerController _playerController;
    private CinematicParry _parryScript;

    private Coroutine _pendingDamageCoroutine;
    [SerializeField] private float parryLeewayWindow = 0.15f; 

    void Start() 
    {
        _currentHealth = maxHealth;
        _animHandler = GetComponent<PlayerAnimationHandler>();
        _playerController = GetComponent<PlayerController>();
        _parryScript = GetComponent<CinematicParry>();
        
        if (deathCanvas != null) deathCanvas.gameObject.SetActive(false);
        
        UpdateUI();
    }

    private void OnTriggerEnter(Collider other) 
    {
        // Don't process hits if dead, invulnerable, or already flinching
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
                Debug.Log("<color=cyan>Parry caught in Grace Period!</color>");
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

    public void TakeDamage(float amount) 
    {
        if (_isDead || _isFlinching || IsInvulnerable) return;

        _currentHealth -= amount;
        _currentHealth = Mathf.Max(_currentHealth, 0);
        UpdateUI();

        if (_currentHealth <= 0) 
        {
            Die();
            return;
        }

        if (_playerController != null) 
        {
            _playerController.ForceCancelAttack();
            _playerController.AddForceBackwards(); 
        }

        if (_animHandler != null) _animHandler.PlayGotHit();

        StartCoroutine(RecoveryRoutine());
    }

    private void Die() 
    {
        _isDead = true;
        IsInvulnerable = true;

        // Stop movement and inputs
        if (_playerController != null) 
        {
            _playerController.enabled = false;
            // If you have a Rigidbody, stop it from sliding
            var rb = GetComponent<Rigidbody>();
            if (rb != null) rb.linearVelocity = Vector3.zero;
        }

        // Play Death Animation (Ensure "Die" is a trigger in your Animator)
        if (_animHandler != null) 
        {
            _animHandler.PlayDeath(); 
        }

        if (deathCanvas != null) 
        {
            StartCoroutine(FadeInDeathUI());
        }
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
        else 
        {
            // Fallback if no CanvasGroup is found
            deathCanvas.alpha = 1; 
        }
    }

    private IEnumerator RecoveryRoutine() 
    {
        _isFlinching = true;
        IsInvulnerable = true;
        yield return new WaitForSeconds(0.6f); 
        IsInvulnerable = false;
        _isFlinching = false;
    }

    private void UpdateUI() 
    { 
        if (healthFillImage) healthFillImage.fillAmount = _currentHealth / maxHealth; 
    }
}