using UnityEngine;
using UnityEngine.UI;
using TMPro;
using System.Collections;
using FMODUnity;

public class PlayerStats : MonoBehaviour
{
    [Header("Stats")]
    public float maxHealth = 100f;
    public float currentHealth;

    [Header("Stamina")]
    public float maxStamina = 3f; // total stamina points
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
    [SerializeField] private PlayerFeedbacks feedbacks;
    [SerializeField] private AttackController attackController;
    [SerializeField] private PlayerAnimationHandler animHandler;

    private Coroutine pulseRoutine;

    private void Start()
    {
        currentHealth = maxHealth;
        currentStamina = maxStamina;
        UpdateUI();

        if (hitOverlay != null)
            hitOverlay.color = new Color(1, 0, 0, 0);
    }

    private void Update()
    {
        HandleStaminaRegen();

        // Trigger parry on right mouse button
        if (Input.GetMouseButtonDown(1) && attackController != null)
        {
            attackController.isParrying = true;
            attackController.SetWeaponVisible(true);
            Debug.Log("Parry button pressed!");
        }
    }

    public void TakeDamage(float amount, Enemy enemy = null)
    {
        bool parrySuccess = attackController != null && attackController.isParrying;

        if (parrySuccess)
        {
            amount *= parryDamageReduction;
            Debug.Log($"🛡️ Parry success! Damage reduced to {amount}");

            // Stagger enemy immediately
            enemy?.GetParried();

            // Start coroutine to play parry then knockback
            StartCoroutine(PlayParryThenKnockback());
        }
        else
        {
            // Directly play knockback if not parrying
            animHandler?.PlayKnockback();
            animHandler?.PlayHit(); // optional: still play hit
        }

        // Apply health damage
        currentHealth = Mathf.Clamp(currentHealth - amount, 0, maxHealth);
        UpdateUI();

        // Weapon visibility
        attackController?.SetWeaponVisible(true);

        // Hit feedback UI
        if (!gotHitEvent.IsNull)
            RuntimeManager.PlayOneShot(gotHitEvent, transform.position);

        if (hitOverlay != null)
        {
            if (pulseRoutine != null) StopCoroutine(pulseRoutine);
            pulseRoutine = StartCoroutine(HitPulse());
        }

        // Death check
        if (currentHealth <= 0)
            Die();

        // Reset parry flag
        if (attackController != null)
            attackController.isParrying = false;
    }

    private IEnumerator PlayParryThenKnockback()
    {
        animHandler?.PlayParry();

        // Wait for parry animation duration (adjust this to match your clip length)
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

    public void RegainStamina(float amount)
    {
        currentStamina = Mathf.Min(currentStamina + amount, maxStamina);
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
