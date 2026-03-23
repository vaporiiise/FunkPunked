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

    void Start() {
        _currentHealth = maxHealth;
        _animHandler = GetComponent<PlayerAnimationHandler>();
        _playerController = GetComponent<PlayerController>();
        UpdateUI();
    }

    private void OnTriggerEnter(Collider other) {
        // 1. Safety Locks
        if (IsInvulnerable || _isFlinching) return;

        // 2. SELF-HIT PROTECT: Ignore collisions with objects attached to the player
        if (other.transform.IsChildOf(transform)) return;

        // 3. TAG CHECK: Only trigger damage if the object has the 'EnemyAttack' tag
        if (other.CompareTag(enemyAttackTag)) {
            
            // DEBUG: Check your console! It will tell you exactly which object hit you.
            // If it says "Boss_Capsule", that object shouldn't have the tag!
            Debug.Log("<color=red>[HEALTH] Hit by object named: </color>" + other.gameObject.name);
            
            TakeDamage(15f);
        }
    }

    public void TakeDamage(float amount) {
        if (_isFlinching || IsInvulnerable) return;

        _currentHealth -= amount;
        _currentHealth = Mathf.Max(_currentHealth, 0);
        UpdateUI();

        // Cancel player's attack and push them back
        if (_playerController != null) {
            _playerController.ForceCancelAttack();
            _playerController.AddForceBackwards(); 
        }

        // Trigger the visual flinch
        if (_animHandler != null) _animHandler.PlayGotHit();

        StartCoroutine(RecoveryRoutine());
    }

    private IEnumerator RecoveryRoutine() {
        _isFlinching = true;
        IsInvulnerable = true;

        // Duration of stun/invincibility
        yield return new WaitForSeconds(0.6f); 
        
        IsInvulnerable = false;
        _isFlinching = false;
    }

    private void UpdateUI() { if (healthFillImage) healthFillImage.fillAmount = _currentHealth / maxHealth; }
}