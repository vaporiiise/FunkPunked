using UnityEngine;
using UnityEngine.UI;
using TMPro;
using System.Collections;
using FMODUnity; // for FMOD integration

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
    public float blockDamageReduction = 0.5f;
    public float parryWindow = 0.1f;
    public float parryDuration = 0.3f;
    public float parryCooldown = 1f;
    public float parryStaminaCost = 20f;
    private bool canParry = true;

    [Header("UI")]
    public Image healthBar;
    public Image staminaBar;
    public TMP_Text healthText;
    public TMP_Text staminaText;

    [Header("Hit Feedback UI")]
    [Tooltip("Assign a full-screen UI image (red vignette) that pulses when hit.")]
    public Image hitOverlay;
    public float pulseDuration = 0.25f;
    public Color hitColor = new Color(1f, 0f, 0f, 0.35f);

    [Header("Audio")]
    [Tooltip("FMOD event to play when the player is hit.")]
    [SerializeField] private EventReference gotHitEvent;

    [Header("References")]
    [SerializeField] private PlayerFeedbacks feedbacks;
    private AttackController attackController;
    private BeatScheduler beatScheduler;
    private EnemyAnimatorHandler animHandler;


    private Coroutine pulseRoutine;

    private void Start()
    {
        animHandler = GetComponentInChildren<EnemyAnimatorHandler>();

        currentHealth = maxHealth;
        currentStamina = maxStamina;
        UpdateUI();

        attackController = GetComponent<AttackController>();
        beatScheduler = FindObjectOfType<BeatScheduler>();

        if (hitOverlay != null)
            hitOverlay.color = new Color(1, 0, 0, 0); // start transparent
    }

    private void Update()
    {
        HandleStaminaRegen();

        // ---- Blocking ----
        if (Input.GetMouseButton(1))
        {
            isBlocking = true;
            attackController?.SetWeaponVisible(true);
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

        // 🎵 FMOD Hit Sound
        if (gotHitEvent.IsNull == false)
            RuntimeManager.PlayOneShot(gotHitEvent, transform.position);

        // 🔴 Red Pulse UI
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
            float alpha = Mathf.Sin((t / pulseDuration) * Mathf.PI); // quick pulse
            hitOverlay.color = new Color(hitColor.r, hitColor.g, hitColor.b, hitColor.a * alpha);
            t += Time.deltaTime;
            yield return null;
        }
        hitOverlay.color = new Color(hitColor.r, hitColor.g, hitColor.b, 0f);
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
