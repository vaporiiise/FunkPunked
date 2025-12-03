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

    [Header("Stamina Charges")]
    public int maxStaminaCharges = 3;
    public int currentStaminaCharges;

    [Header("Stamina Regen Settings")]
    public float regenDelay = 1.5f;
    private float regenTimer = 0f;

    [Header("Parry Settings")]
    public bool isParryingInput = false; // tracks if player pressed parry
    public float parryDamageReduction = 0.5f; // previously blockDamageReduction

    [Header("UI")]
    public Image[] staminaCharges;
    public Image healthBar;
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
    [SerializeField] private BeatScheduler beatScheduler;
    [SerializeField] private PlayerAnimationHandler animHandler;

    private Coroutine pulseRoutine;

    private void Start()
    {
        currentHealth = maxHealth;
        currentStaminaCharges = maxStaminaCharges;
        UpdateUI();

        if (hitOverlay != null)
            hitOverlay.color = new Color(1, 0, 0, 0);
    }

    private void Update()
    {
        HandleStaminaRegen();

        // Trigger parry on button press (right mouse button)
        if (Input.GetMouseButtonDown(1))
        {
            isParryingInput = true;
            attackController?.SetWeaponVisible(true);
            Debug.Log("Parry button pressed!");
        }
    }

    public void TakeDamage(float amount)
    {
        if (isParryingInput)
        {
            amount *= parryDamageReduction;
            Debug.Log($"🛡️ Parry active! Damage reduced to {amount}.");
        }

        currentHealth = Mathf.Clamp(currentHealth - amount, 0, maxHealth);
        UpdateUI();

        attackController?.SetWeaponVisible(true);

        if (!gotHitEvent.IsNull)
            RuntimeManager.PlayOneShot(gotHitEvent, transform.position);

        if (hitOverlay != null)
        {
            if (pulseRoutine != null) StopCoroutine(pulseRoutine);
            pulseRoutine = StartCoroutine(HitPulse());
        }

        if (currentHealth <= 0)
            Die();

        // reset parry input after processing damage
        isParryingInput = false;
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

    public void UseStamina(int amount)
    {
        currentStaminaCharges = Mathf.Max(currentStaminaCharges - amount, 0);
        regenTimer = regenDelay;
        UpdateUI();
    }

    public void RegainStamina(int amount)
    {
        currentStaminaCharges = Mathf.Min(currentStaminaCharges + amount, maxStaminaCharges);
        UpdateUI();
    }

    private void HandleStaminaRegen()
    {
        if (regenTimer > 0)
        {
            regenTimer -= Time.deltaTime;
        }
        else if (currentStaminaCharges < maxStaminaCharges)
        {
            currentStaminaCharges++;
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

        if (healthText != null)
            healthText.text = $"{currentHealth:0}/{maxHealth}";

        for (int i = 0; i < staminaCharges.Length; i++)
        {
            if (staminaCharges[i] != null)
                staminaCharges[i].enabled = i < currentStaminaCharges;
        }
    }
}
