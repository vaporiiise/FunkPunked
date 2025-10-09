using UnityEngine;
using UnityEngine.UI;
using TMPro;

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
    }

    public void TakeDamage(float amount)
    {
        currentHealth = Mathf.Clamp(currentHealth - amount, 0, maxHealth);
        UpdateUI();

        if (currentHealth <= 0)
            Die();
    }

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

    private void Die()
    {
        Debug.Log("Player Died!");
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
