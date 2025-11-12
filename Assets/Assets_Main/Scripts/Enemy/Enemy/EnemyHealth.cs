using UnityEngine;
using UnityEngine.UI;
using System.Collections;

[RequireComponent(typeof(EnemyMovement))]
[RequireComponent(typeof(EnemyAnimatorHandler))]
public class EnemyHealth : MonoBehaviour
{
    [Header("Health Settings")]
    public float maxHealth = 20f;
    private float currentHealth;

    [Header("UI")]
    public Image healthBarFill;
    public CanvasGroup healthCanvasGroup;

    [Header("Death Settings")]
    public GameObject deathParticle;
    public float deathDestroyDelay = 1.5f;

    [Header("Fade Settings")]
    public float fadeInDuration = 0.15f;
    public float fadeOutDelay = 1.5f;
    public float fadeOutDuration = 0.5f;

    [Header("Stagger Settings")]
    public float staggerDuration = 3f;
    public GameObject staggerSprite; // simple visual for stagger

    private EnemyAnimatorHandler animHandler;
    private EnemyMovement movement;
    private Coroutine fadeRoutine;
    private bool isDead = false;

    // Called from Enemy.cs
    public void Initialize()
    {
        animHandler = GetComponentInChildren<EnemyAnimatorHandler>();
        movement = GetComponent<EnemyMovement>();

        currentHealth = maxHealth;
        UpdateHealthBar();
        SetBarVisible(false, true);

        if (staggerSprite != null)
            staggerSprite.SetActive(false);
    }

    public void TakeDamage(float amount)
    {
        if (isDead) return;

        currentHealth -= amount;
        currentHealth = Mathf.Clamp(currentHealth, 0, maxHealth);

        animHandler?.PlayHit();
        UpdateHealthBar();
        SetBarVisible(true);

        if (currentHealth <= 0)
            Die();
    }

    private void UpdateHealthBar()
    {
        if (healthBarFill != null)
            healthBarFill.fillAmount = currentHealth / maxHealth;
    }

    private void Die()
    {
        if (isDead) return;
        isDead = true;

        movement?.SetStopForAttack(true);
        animHandler?.PlayDie();

        if (deathParticle != null)
        {
            GameObject fx = Instantiate(deathParticle, transform.position, Quaternion.identity);
            Destroy(fx, 3f);
        }

        SetBarVisible(false);
        Destroy(gameObject, deathDestroyDelay);
    }

    /// <summary>
    /// Called when enemy is successfully parried. Stops movement for staggerDuration.
    /// </summary>
    public void Stagger()
    {
        if (staggerSprite != null)
            staggerSprite.SetActive(true);

        movement?.SetStopForAttack(true);
        StartCoroutine(StaggerRoutine());
    }

    private IEnumerator StaggerRoutine()
    {
        yield return new WaitForSeconds(staggerDuration);

        if (staggerSprite != null)
            staggerSprite.SetActive(false);

        movement?.SetStopForAttack(false);
    }

    // ---------------------------
    // Health bar fade effects
    // ---------------------------
    private void SetBarVisible(bool visible, bool instant = false)
    {
        if (healthCanvasGroup == null) return;

        if (fadeRoutine != null)
            StopCoroutine(fadeRoutine);

        if (instant)
        {
            healthCanvasGroup.alpha = visible ? 1f : 0f;
        }
        else
        {
            fadeRoutine = StartCoroutine(visible ? FadeCanvas(1f, fadeInDuration) : FadeOutAfterDelay());
        }
    }

    private IEnumerator FadeOutAfterDelay()
    {
        yield return new WaitForSeconds(fadeOutDelay);
        yield return FadeCanvas(0f, fadeOutDuration);
    }

    private IEnumerator FadeCanvas(float target, float duration)
    {
        float start = healthCanvasGroup.alpha;
        float elapsed = 0f;

        while (elapsed < duration)
        {
            elapsed += Time.deltaTime;
            healthCanvasGroup.alpha = Mathf.Lerp(start, target, elapsed / duration);
            yield return null;
        }

        healthCanvasGroup.alpha = target;
    }
}
