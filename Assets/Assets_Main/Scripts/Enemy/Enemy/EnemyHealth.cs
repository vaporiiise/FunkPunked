using UnityEngine;
using UnityEngine.UI;
using System.Collections;

public class EnemyHealth : MonoBehaviour
{
    [Header("Health Settings")]
    public float maxHealth = 20f;
    private float hp;

    [Header("UI")]
    public Image healthBarFill;
    public CanvasGroup healthCanvas;
    public float fadeInDuration = 0.15f;
    public float fadeOutDelay = 1.5f;
    public float fadeOutDuration = 0.5f;

    [Header("Stagger")]
    public GameObject staggerSprite;
    public float staggerDuration = 2f;

    [Header("Death")]
    public GameObject deathFX;
    public float destroyDelay = 2f;

    private EnemyAnimatorHandler animator;
    private Enemy enemyCore;

    private Coroutine fadeRoutine;
    private bool dead = false;

    public float currentHealth { get { return hp; } }

    public void Initialize(Enemy c)
    {
        enemyCore = c;
        animator = GetComponentInChildren<EnemyAnimatorHandler>();

        hp = maxHealth;

        if (healthBarFill != null)
            healthBarFill.fillAmount = 1f;

        if (healthCanvas != null)
            healthCanvas.alpha = 0f;

        if (staggerSprite != null)
            staggerSprite.SetActive(false);
    }

    public void TakeDamage(float amount)
    {
        if (dead) return;

        hp -= amount;
        if (hp < 0) hp = 0;

        UpdateBar();
        ShowBar();

        if (hp <= 0)
            Die();
    }

    private void UpdateBar()
    {
        if (healthBarFill != null)
            healthBarFill.fillAmount = hp / maxHealth;
    }

    private void ShowBar()
    {
        if (healthCanvas == null) return;

        if (fadeRoutine != null)
            StopCoroutine(fadeRoutine);

        fadeRoutine = StartCoroutine(FadeCanvas(1f, fadeInDuration, false));
    }

    private IEnumerator FadeCanvas(float target, float duration, bool waitThenFade)
    {
        if (waitThenFade)
            yield return new WaitForSeconds(fadeOutDelay);

        float start = healthCanvas.alpha;
        float elapsed = 0f;

        while (elapsed < duration)
        {
            elapsed += Time.deltaTime;
            healthCanvas.alpha = Mathf.Lerp(start, target, elapsed / duration);
            yield return null;
        }

        healthCanvas.alpha = target;
    }

    public void HideBarDelayed()
    {
        if (healthCanvas == null) return;

        if (fadeRoutine != null)
            StopCoroutine(fadeRoutine);

        fadeRoutine = StartCoroutine(FadeCanvas(0f, fadeOutDuration, true));
    }

    public void ApplyStagger()
    {
        if (dead) return;

        if (staggerSprite != null)
            staggerSprite.SetActive(true);

        StartCoroutine(StaggerRoutine());
    }

    private IEnumerator StaggerRoutine()
    {
        enemyCore.EnterStagger(staggerDuration);
        yield return new WaitForSeconds(staggerDuration);

        if (staggerSprite != null)
            staggerSprite.SetActive(false);
    }

    private void Die()
    {
        dead = true;

        animator.PlayDeath();

        if (deathFX != null)
        {
            var fx = Instantiate(deathFX, transform.position, Quaternion.identity);
            Destroy(fx, 3f);
        }

        if (healthCanvas != null)
            healthCanvas.alpha = 0f;

        Destroy(gameObject, destroyDelay);
    }
}
