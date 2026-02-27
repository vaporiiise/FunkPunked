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

    private bool _isInvulnerable = false;
    public bool IsInvulnerable { get => _isInvulnerable; set => _isInvulnerable = value; }
    private CinematicParry _parryScript;
    private bool _isDead = false;

    void Start()
    {
        _currentHealth = maxHealth;
        _parryScript = GetComponent<CinematicParry>();
        UpdateUI();
    }

    private void OnTriggerEnter(Collider other)
    {
        if (!other.CompareTag("EnemyAttack")) return;

        float distance = Vector3.Distance(transform.position, other.transform.position);

        if (distance > 5f)
        {
            Debug.LogWarning("<color=orange>GHOST HIT BLOCKED:</color> " + other.gameObject.name + " tried to hit from " + distance + "m away.");
            return;
        }

        Debug.Log("<color=yellow>VALID HIT:</color> Player hit by " + other.gameObject.name);
        TakeDamage(15f);
    }

    public void TakeDamage(float amount)
    {
        if (_isDead) return;

        if ((_parryScript != null && _parryScript.IsParrying) || _isInvulnerable)
        {
            Debug.Log("<color=green>ZERO DAMAGE: Parry Shield Active.</color>");
            return;
        }

        _currentHealth -= amount;
        _currentHealth = Mathf.Max(_currentHealth, 0);
        UpdateUI();

        if (UIShake.Instance != null) UIShake.Instance.Shake(0.2f, 15f);
        StartCoroutine(FlashOverlay());

        if (_currentHealth <= 0)
        {
            Die();
        }
    }

    private void Die()
    {
        if (_isDead) return;
        _isDead = true;
        Debug.Log("<color=red>PLAYER DIED. Restarting Level...</color>");
        
        if (GameManager.Instance != null)
        {
            GameManager.Instance.RestartLevel();
        }
        else
        {
            SceneManager.LoadScene(SceneManager.GetActiveScene().buildIndex);
        }
    }

    private void UpdateUI()
    {
        if (healthFillImage) healthFillImage.fillAmount = _currentHealth / maxHealth;
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