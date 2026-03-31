using UnityEngine;
using UnityEngine.UI;
using System.Collections;

public class PlayerHealth : MonoBehaviour
{
    public float maxHealth = 100f;
    private float _currentHealth;
    [SerializeField] private Image healthFillImage;

    [Header("Settings")]
    public string enemyAttackTag = "EnemyAttack";
    public bool IsInvulnerable { get; set; }
    
    private bool _isFlinching = false;
    private PlayerAnimationHandler _animHandler;
    private PlayerController _playerController;
    private CinematicParry _parryScript;

    // --- NEW: BUFFER SETTINGS ---
    private Coroutine _pendingDamageCoroutine;
    [SerializeField] private float parryLeewayWindow = 0.15f; // How long to wait to see if player parries

    void Start() {
        _currentHealth = maxHealth;
        _animHandler = GetComponent<PlayerAnimationHandler>();
        _playerController = GetComponent<PlayerController>();
        _parryScript = GetComponent<CinematicParry>();
        UpdateUI();
    }

    private void OnTriggerEnter(Collider other) {
        if (IsInvulnerable || _isFlinching) return;
        if (other.transform.IsChildOf(transform)) return;

        if (other.CompareTag(enemyAttackTag)) {
            // Instead of taking damage now, we wait to see if the player parries "last second"
            if (_pendingDamageCoroutine != null) StopCoroutine(_pendingDamageCoroutine);
            _pendingDamageCoroutine = StartCoroutine(WaitAndCheckForParry(15f, other.gameObject.name));
        }
    }

    private IEnumerator WaitAndCheckForParry(float damageAmount, string attackerName) {
        float timer = 0;
        
        while (timer < parryLeewayWindow) {
            // If the player starts parrying during this tiny window, ABORT DAMAGE
            if (_parryScript != null && _parryScript.IsParrying) {
                Debug.Log("<color=cyan>[HEALTH] Damage Cancelled! Successful Parry detected during buffer.</color>");
                _pendingDamageCoroutine = null;
                yield break; // Exit the coroutine, taking 0 damage
            }

            timer += Time.deltaTime;
            yield return null;
        }

        // If we reach here, the player failed to parry in time
        Debug.Log("<color=red>[HEALTH] Buffer Expired. Taking damage from: </color>" + attackerName);
        TakeDamage(damageAmount);
        _pendingDamageCoroutine = null;
    }

    public void TakeDamage(float amount) {
        if (_isFlinching || IsInvulnerable) return;

        _currentHealth -= amount;
        _currentHealth = Mathf.Max(_currentHealth, 0);
        UpdateUI();

        if (_playerController != null) {
            _playerController.ForceCancelAttack();
            _playerController.AddForceBackwards(); 
        }

        if (_animHandler != null) _animHandler.PlayGotHit();

        StartCoroutine(RecoveryRoutine());
    }

    private IEnumerator RecoveryRoutine() {
        _isFlinching = true;
        IsInvulnerable = true;
        yield return new WaitForSeconds(0.6f); 
        IsInvulnerable = false;
        _isFlinching = false;
    }

    private void UpdateUI() { if (healthFillImage) healthFillImage.fillAmount = _currentHealth / maxHealth; }
}