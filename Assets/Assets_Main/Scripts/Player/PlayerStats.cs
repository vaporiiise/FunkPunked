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

    [Header("Defense Settings")]
    public bool isBlocking = false;
    public bool isParrying = false;
    public float blockDamageReduction = 0.5f;
    public float parryWindow = 0.1f;
    public float parryDuration = 0.3f;
    public float parryCooldown = 1f;
    public int parryStaminaCost = 1; // consumes 1 charge
    private bool canParry = true;

    [Header("UI")]
    public Image[] staminaCharges; // assign 3 images in inspector
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

        if (Input.GetMouseButton(1))
        {
            isBlocking = true;
            attackController?.SetWeaponVisible(true);
        }
        else
        {
            isBlocking = false;
        }

        if (Input.GetMouseButtonDown(1))
            TryParry();
    }

    public void TakeDamage(float amount)
    {
        if (isParrying)
        {
            Debug.Log("🟢 Parry Successful! No damage taken.");
            attackController?.SetWeaponVisible(true);
            return;
        }

        if (isBlocking)
        {
            amount *= blockDamageReduction;
            Debug.Log($"🧱 Blocked attack! Damage reduced to {amount}.");
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
            // regenerate 1 charge at a time
            currentStaminaCharges++;
            regenTimer = regenDelay;
            UpdateUI();
        }
    }

    public void TryParry()
    {
        if (!canParry) return;
        if (currentStaminaCharges < parryStaminaCost) return;

        if (beatScheduler != null && !beatScheduler.IsInAttackWindow(parryWindow))
        {
            Debug.Log("❌ Parry failed – off-beat!");
            return;
        }

        UseStamina(parryStaminaCost);
        StartCoroutine(ParryRoutine());
    }

    private IEnumerator ParryRoutine()
    {
        canParry = false;
        isParrying = true;
        Debug.Log("🟢 Parry Active!");

        attackController?.SetWeaponVisible(true);
        animHandler?.PlayParry();

        yield return new WaitForSeconds(parryDuration);
        isParrying = false;
        Debug.Log("🔴 Parry Ended.");

        yield return new WaitForSeconds(parryCooldown);
        canParry = true;
        Debug.Log("✅ Parry Ready Again.");
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

        // update stamina charges
        for (int i = 0; i < staminaCharges.Length; i++)
        {
            if (staminaCharges[i] != null)
                staminaCharges[i].enabled = i < currentStaminaCharges;
        }
    }
}
