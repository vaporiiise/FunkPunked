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

    [Header("Parry Settings")]
    public bool IsParrying { get; private set; } = false;
    public float parryDuration = 0.3f; // how long parry lasts
    public float parryCooldown = 1f;   // time before can parry again
    public float parryStaminaCost = 20f; // stamina used per parry
    private bool canParry = true;

    [Header("UI")]
    public Image healthBar;
    public Image staminaBar;
    public TMP_Text healthText;
    public TMP_Text staminaText;

    private void Start()
    {
        currentHealth = maxHealth;
        currentStamina = maxStamina;
        UpdateUI();
    }

    private void Update()
    {
        HandleStaminaRegen();

        // Simple input test (you can call StartParry() from another script instead)
        if (Input.GetKeyDown(KeyCode.E))
        {
            TryParry();
        }
    }

    // ----------------------------
    // DAMAGE / HEALTH SYSTEM
    // ----------------------------
    public void TakeDamage(float amount)
    {
        // 🟩 Check if player is currently parrying
        AttackController attackController = FindObjectOfType<AttackController>();
        if (attackController != null && attackController.isParrying)
        {
            Debug.Log("🛡 Attack blocked — player is parrying!");
            return; // No damage taken
        }

        currentHealth = Mathf.Clamp(currentHealth - amount, 0, maxHealth);
        UpdateUI();

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
        if (!canParry)
        {
            Debug.Log("❌ Parry on cooldown!");
            return;
        }

        if (currentStamina < parryStaminaCost)
        {
            Debug.Log("⚠️ Not enough stamina to parry!");
            return;
        }

        UseStamina(parryStaminaCost);
        StartCoroutine(ParryRoutine());
    }

    private IEnumerator ParryRoutine()
    {
        canParry = false;
        IsParrying = true;

        Debug.Log("🟢 Parry Active!");
        // You can trigger MMF parry feedback here

        yield return new WaitForSeconds(parryDuration);
        IsParrying = false;
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
        // Death logic here
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
