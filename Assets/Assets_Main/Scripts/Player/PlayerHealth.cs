using UnityEngine;
using UnityEngine.UI;
using System.Collections;

public class PlayerHealth : MonoBehaviour
{
    public float maxHealth = 100f;
    private float _currentHealth;
    [SerializeField] private Image healthFillImage;

    public bool IsInvulnerable { get; set; }
    
    private PlayerAnimationHandler _animHandler;
    private PlayerController _playerController;

    void Start() {
        _currentHealth = maxHealth;
        _animHandler = GetComponent<PlayerAnimationHandler>();
        _playerController = GetComponent<PlayerController>();
        UpdateUI();
    }

    private void OnTriggerEnter(Collider other) {
        if (IsInvulnerable || !other.CompareTag("EnemyAttack")) return;

        TakeDamage(15f);
    }

    public void TakeDamage(float amount) {
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
        IsInvulnerable = true;
        yield return new WaitForSeconds(0.6f);
        IsInvulnerable = false;
    }

    private void UpdateUI() { if (healthFillImage) healthFillImage.fillAmount = _currentHealth / maxHealth; }
}