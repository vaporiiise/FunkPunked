using UnityEngine;
using UnityEngine.UI;
using System.Collections;
using UnityEngine.SceneManagement;

public class PlayerHealth : MonoBehaviour
{
    public float maxHealth = 100f;
    private float _currentHealth;
    [SerializeField] private Image healthFillImage;
    [SerializeField] private CanvasGroup damageOverlay;

    public float recoveryTime = 0.6f; 
    private bool _isInvulnerable = false;
    public bool IsInvulnerable { get => _isInvulnerable; set => _isInvulnerable = value; }
    
    private PlayerAnimationHandler _animHandler;
    private PlayerController _playerController;
    private bool _isDead = false;

    void Start()
    {
        _currentHealth = maxHealth;
        _animHandler = GetComponent<PlayerAnimationHandler>();
        _playerController = GetComponent<PlayerController>();
        UpdateUI();
    }

    private void OnTriggerEnter(Collider other)
    {
        if (_isInvulnerable || _isDead) return;
        if (!other.CompareTag("EnemyAttack")) return;

        TakeDamage(15f);
    }

    public void TakeDamage(float amount)
    {
        if (_isInvulnerable || _isDead) return;

        _currentHealth -= amount;
        _currentHealth = Mathf.Max(_currentHealth, 0);
        UpdateUI();

        // 1. Force Reset Combat & TimeScale
        if (_playerController != null) _playerController.ForceCancelAttack();

        // 2. Play Hit Animation
        if (_animHandler != null) _animHandler.PlayGotHit();

        // 3. I-Frames
        StartCoroutine(RecoveryRoutine());

        if (UIShake.Instance != null) UIShake.Instance.Shake(0.2f, 15f);
        StartCoroutine(FlashOverlay());

        if (_currentHealth <= 0) Die();
    }

    private IEnumerator RecoveryRoutine()
    {
        _isInvulnerable = true;
        yield return new WaitForSeconds(recoveryTime);
        _isInvulnerable = false;
    }

    private void UpdateUI()
    {
        if (healthFillImage) healthFillImage.fillAmount = _currentHealth / maxHealth;
    }

    private void Die()
    {
        if (_isDead) return;
        _isDead = true;
        SceneManager.LoadScene(SceneManager.GetActiveScene().buildIndex);
    }

    private IEnumerator FlashOverlay()
    {
        if (damageOverlay == null) yield break;
        damageOverlay.alpha = 0.5f;
        while (damageOverlay.alpha > 0)
        {
            damageOverlay.alpha -= Time.unscaledDeltaTime * 2f;
            yield return null;
        }
    }
}