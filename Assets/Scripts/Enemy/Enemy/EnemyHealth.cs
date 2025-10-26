using UnityEngine;
using UnityEngine.UI;
using System.Collections;

public class EnemyHealth : MonoBehaviour
{
    [Header("Health Settings")]
    public float maxHealth = 20f;
    private float currentHealth;

    [Header("UI References")]
    public Image healthBarFill;
    public CanvasGroup healthCanvasGroup;

    [Header("Fade Settings")]
    public float fadeInDuration = 0.15f;
    public float fadeOutDelay = 1.5f;
    public float fadeOutDuration = 0.5f;

    [Header("Death Settings")]
    public GameObject deathParticle;
    public float deathDestroyDelay = 1.5f;

    [Header("References")]
    private EnemyAnimatorHandler animHandler;
    private EnemyMovement movement;

    private Coroutine fadeRoutine;

    // 🔹 Called from Enemy.cs
    public void Initialize()
    {
        animHandler = GetComponentInChildren<EnemyAnimatorHandler>();
        movement = GetComponent<EnemyMovement>();

        currentHealth = maxHealth;
        UpdateHealthBar();
        SetBarVisible(false, true);
    }

    public void TakeDamage(float amount)
    {
        currentHealth -= amount;
        currentHealth = Mathf.Clamp(currentHealth, 0, maxHealth);

        animHandler?.PlayHit();
        UpdateHealthBar();

        // Show bar on hit
        SetBarVisible(true);

        if (currentHealth <= 0)
            Die();
    }

    private void UpdateHealthBar()
    {
        if (healthBarFill != null)
        {
            float normalized = currentHealth / maxHealth;
            healthBarFill.fillAmount = normalized;
        }

        if (currentHealth >= maxHealth)
            SetBarVisible(false);
    }

    private void Die()
    {
        movement?.StopMovement(true);
        animHandler?.PlayDie();

        if (deathParticle != null)
        {
            GameObject fx = Instantiate(deathParticle, transform.position, Quaternion.identity);
            Destroy(fx, 3f);
        }

        Destroy(gameObject, deathDestroyDelay);
    }

    // ---------------------------
    // FADE EFFECTS
    // ---------------------------
    private void SetBarVisible(bool visible, bool instant = false)
    {
        if (healthCanvasGroup == null)
            return;

        if (fadeRoutine != null)
            StopCoroutine(fadeRoutine);

        if (instant)
        {
            healthCanvasGroup.alpha = visible ? 1f : 0f;
            return;
        }

        if (visible)
            fadeRoutine = StartCoroutine(FadeCanvas(1f, fadeInDuration));
        else
            fadeRoutine = StartCoroutine(FadeOutAfterDelay());
    }

    private IEnumerator FadeOutAfterDelay()
    {
        yield return new WaitForSeconds(fadeOutDelay);
        yield return FadeCanvas(0f, fadeOutDuration);
    }

    private IEnumerator FadeCanvas(float target, float duration)
    {
        if (healthCanvasGroup == null) yield break;

        float start = healthCanvasGroup.alpha;
        float elapsed = 0f;

        while (elapsed < duration)
        {
            elapsed += Time.deltaTime;
            float t = Mathf.Clamp01(elapsed / duration);
            healthCanvasGroup.alpha = Mathf.Lerp(start, target, t);
            yield return null;
        }

        healthCanvasGroup.alpha = target;
    }
}
