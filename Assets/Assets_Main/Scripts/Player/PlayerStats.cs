using UnityEngine;
using UnityEngine.UI;
using TMPro;
using System.Collections;
using FMODUnity;

[RequireComponent(typeof(PlayerParry))]
public class PlayerStats : MonoBehaviour
{
    [Header("Stats")]
    public float maxHealth = 100f;
    public float currentHealth;

    [Header("Stamina")]
    public float maxStamina = 3f;
    public float currentStamina;
    public float regenDelay = 1.5f;
    private float regenTimer = 0f;

    [Header("Parry Settings")]
    public float parryDamageReduction = 0.5f;

    [Header("UI")]
    public Image healthBar;
    public Image staminaBar;
    public TMP_Text healthText;

    [Header("Hit Feedback UI")]
    public Image hitOverlay;
    public float pulseDuration = 0.25f;
    public Color hitColor = new Color(1f, 0f, 0f, 0.35f);

    [Header("Audio")]
    [SerializeField] private EventReference gotHitEvent;

    [Header("References")]
    [SerializeField] private PlayerAnimationHandler animHandler;

    private PlayerParry playerParry;
    private Coroutine pulseRoutine;

    void Start()
    {
        playerParry = GetComponent<PlayerParry>();
        currentHealth = maxHealth;
        currentStamina = maxStamina;
        UpdateUI();

        if (hitOverlay != null)
            hitOverlay.color = new Color(1, 0, 0, 0);
    }

    void Update()
    {
        HandleStaminaRegen();
    }

    public void TakeDamage(float amount, Enemy enemy = null)
    {
        bool parrySuccess = playerParry != null && playerParry.IsParryWindowActive() && Input.GetMouseButtonDown(1);

        if (parrySuccess)
        {
            Debug.Log("🟦 Player parried!");
            amount *= parryDamageReduction;

            if (enemy != null)
            {
                enemy.GetParried(); // Only called if player actually parried
                Debug.Log("⚡ Enemy stunned by parry!");
            }

            playerParry.TryParry(); // Registers successful parry and burst

            // Optional: play parry animation then knockback
            StartCoroutine(PlayParryThenKnockback());
        }
        else
        {
            playerParry?.ResetParryStreak();
            Debug.Log("🟥 Player got hit!");
            animHandler?.PlayKnockback();
            animHandler?.PlayHit();
        }

        currentHealth = Mathf.Clamp(currentHealth - amount, 0, maxHealth);
        UpdateUI();

        if (!gotHitEvent.IsNull)
            RuntimeManager.PlayOneShot(gotHitEvent, transform.position);

        if (hitOverlay != null)
        {
            if (pulseRoutine != null) StopCoroutine(pulseRoutine);
            pulseRoutine = StartCoroutine(HitPulse());
        }

        if (currentHealth <= 0)
            Die();
    }

    private IEnumerator PlayParryThenKnockback()
    {
        animHandler?.PlayParry();
        yield return new WaitForSeconds(0.3f);
        animHandler?.PlayKnockback();
    }

    private IEnumerator HitPulse()
    {
        float t = 0f;
        while (t < pulseDuration)
        {
            float alpha = Mathf.Sin((t / pulseDuration) * Mathf.PI);
            hitOverlay.color = new Color(hitColor.r, hitColor.g, hitColor.b, hitColor.a * alpha);
            t += Time.deltaTime;
            yield return null;
        }
        hitOverlay.color = new Color(hitColor.r, hitColor.g, hitColor.b, 0f);
    }

    public void UseStamina(float amount)
    {
        currentStamina = Mathf.Max(currentStamina - amount, 0f);
        regenTimer = regenDelay;
        UpdateUI();
    }

    private void HandleStaminaRegen()
    {
        if (regenTimer > 0)
        {
            regenTimer -= Time.deltaTime;
        }
        else if (currentStamina < maxStamina)
        {
            currentStamina += 1f;
            regenTimer = regenDelay;
            UpdateUI();
        }
    }

    private void Die()
    {
        Debug.Log("💀 Player Died!");
    }

    private void UpdateUI()
    {
        if (healthBar != null)
            healthBar.fillAmount = currentHealth / maxHealth;

        if (staminaBar != null)
            staminaBar.fillAmount = currentStamina / maxStamina;

        if (healthText != null)
            healthText.text = $"{currentHealth:0}/{maxHealth}";
    }
}
