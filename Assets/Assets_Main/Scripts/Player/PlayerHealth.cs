using UnityEngine;
using UnityEngine.UI;
using System.Collections;
using UnityEngine.SceneManagement; // Required for restarting the scene

public class PlayerHealth : MonoBehaviour
{
    public float maxHealth = 100f;
    private float _currentHealth;
    [SerializeField] private Image healthFillImage;
    [SerializeField] private CanvasGroup damageOverlay;

    private bool _isInvulnerable = false;
    public bool IsInvulnerable { get => _isInvulnerable; set => _isInvulnerable = value; }
    private CinematicParry _parryScript;

    void Start() { 
        _currentHealth = maxHealth; 
        _parryScript = GetComponent<CinematicParry>(); 
        UpdateUI(); 
    }

    public void TakeDamage(float amount) {
        if ((_parryScript != null && _parryScript.IsParrying) || _isInvulnerable) {
            Debug.Log("<color=green>ZERO DAMAGE: Parry Shield Active.</color>");
            return; 
        }

        _currentHealth -= amount;
        _currentHealth = Mathf.Max(_currentHealth, 0);
        UpdateUI();

        if (UIShake.Instance != null) UIShake.Instance.Shake(0.2f, 15f);
        StartCoroutine(FlashOverlay());

        if (_currentHealth <= 0) {
            Die();
        }
    }

    private void Die() {
        // Reloads the currently active scene
        SceneManager.LoadScene(SceneManager.GetActiveScene().buildIndex);
    }

    private void UpdateUI() { if (healthFillImage) healthFillImage.fillAmount = _currentHealth / maxHealth; }

    private IEnumerator FlashOverlay() {
        if (damageOverlay == null) yield break;
        damageOverlay.alpha = 0.5f;
        while (damageOverlay.alpha > 0) { 
            damageOverlay.alpha -= Time.unscaledDeltaTime * 2f; 
            yield return null; 
        }
    }
}