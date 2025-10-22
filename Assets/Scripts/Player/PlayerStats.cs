using UnityEngine;
using UnityEngine.UI;
using TMPro;
using System.Collections;

public class PlayerStats : MonoBehaviour
{
    [Header("Stats")]
    public float maxHealth = 100f;
    public float currentHealth;
    public float maxStamina = 100f;
    public float currentStamina;

    [Header("Stamina Regen Settings")]
    public float staminaRegenRate = 15f; 
    public float regenDelay = 1.5f; 
    private float regenTimer = 0f;

    [Header("Defense Settings")]
    public bool isBlocking = false;
    public bool isParrying = false;
    public float blockDamageReduction = 0.5f;   // 50% less damage
    public float parryWindow = 0.1f;            // Beat window for parry
    public float parryDuration = 0.3f;
    public float parryCooldown = 1f;
    public float parryStaminaCost = 20f;
    private bool canParry = true;

    [Header("UI")]
    public Image healthBar;
    public Image staminaBar;
    public TMP_Text healthText;
    public TMP_Text staminaText;

    [Header("References")]
    [SerializeField] private PlayerFeedbacks feedbacks;
    private AttackController attackController;
    private BeatScheduler beatScheduler;

    private void Start()
    {
        currentHealth = maxHealth;
        currentStamina = maxStamina;
        UpdateUI();

        attackController = GetComponent<AttackController>();
        beatScheduler = FindObjectOfType<BeatScheduler>();
    }

    private void Update()
    {
        HandleStaminaRegen();

        // ---- Blocking ----
        if (Input.GetMouseButton(1))
        {
            isBlocking = true;
            attackController?.SetWeaponVisible(true); // make sure weapon visible
        }
        else
        {
            isBlocking = false;
        }

        // ---- Parry ----
        if (Input.GetMouseButtonDown(1))
        {
            TryParry();
        }
    }

    // ----------------------------
    // DAMAGE / HEALTH SYSTEM
    // ----------------------------
    public void TakeDamage(float amount)
    {
        // 🛡 If parrying, block completely
        if (isParrying)
        {
            Debug.Log("🟢 Parry Successful! No damage taken.");
            attackController?.SetWeaponVisible(true);
            return;
        }

        // 🧱 If blocking, reduce damage
        if (isBlocking)
        {
            amount *= blockDamageReduction;
            Debug.Log($"🧱 Blocked attack! Damage reduced to {amount}.");
        }

        currentHealth = Mathf.Clamp(currentHealth - amount, 0, maxHealth);
        UpdateUI();

        attackController?.SetWeaponVisible(true);

        if (currentHealth <= 0)
            Die();
    }

    // ----------------------------
    // STAMINA SYSTEM
    // ----------------------------
    public void UseStamina(float amount)
    {
        currentStamina = Mathf.Clamp(currentStamina - amount, 0, maxStamina);
        regenTimer = regenDelay; 
        UpdateUI();
    }

    public void RegainStamina(float amount)
    {
        currentStamina = Mathf.Clamp(currentStamina + amount, 0, maxStamina);
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
            currentStamina += staminaRegenRate * Time.deltaTime;
            currentStamina = Mathf.Clamp(currentStamina, 0, maxStamina);
            UpdateUI();
        }
    }

    // ----------------------------
    // PARRY SYSTEM
    // ----------------------------
    public void TryParry()
    {
        if (!canParry) return;
        if (currentStamina < parryStaminaCost) return;

        // Check beat timing (for rhythm precision)
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

        yield return new WaitForSeconds(parryDuration);
        isParrying = false;
        Debug.Log("🔴 Parry Ended.");

        yield return new WaitForSeconds(parryCooldown);
        canParry = true;
        Debug.Log("✅ Parry Ready Again.");
    }

    // ----------------------------
    // DEATH / UI
    // ----------------------------
    private void Die()
    {
        Debug.Log("💀 Player Died!");
        // Trigger death animation or feedback here
    }

    private void UpdateUI()
    {
        if (healthBar != null)
            healthBar.fillAmount = currentHealth / maxHealth;

        if (staminaBar != null)
            staminaBar.fillAmount = currentStamina / maxStamina;

        if (healthText != null)
            healthText.text = $"{currentHealth:0}/{maxHealth}";

        if (staminaText != null)
            staminaText.text = $"{currentStamina:0}/{maxStamina}";
    }
}
