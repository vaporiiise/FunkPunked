using UnityEngine;
using FMODUnity;
using UnityEngine.AI;
using System.Collections;

public class AttackController : MonoBehaviour
{
    [Header("References")]
    [SerializeField] private BeatScheduler scheduler;
    [SerializeField] private PlayerStats playerStats;
    [SerializeField] private ComboManager comboManager;
    [SerializeField] private WeaponCollider weaponCollider; // 🟩 assign your weapon here

    [Header("Timing Windows (seconds)")]
    public float attackWindow = 0.18f;
    public float parryWindow = 0.2f;
    private bool canAttack = true;

    [Header("Animation")]
    public Animator animator;
    public string[] attackTriggers = { "Attack1", "Attack2"};
    private int attackCount = 0;

    [Header("Stamina & Parry")]
    public float parryStaminaGain = 25f;

    [Header("FMOD Events")]
    [EventRef] public string attackHitEvent;
    [EventRef] public string parryHitEvent;

    [Header("Attack Cooldown")]
    public float attackCooldown = 0.25f;

    [Header("Parry Protection")]
    public float parryActiveDuration = 0.6f;
    [HideInInspector] public bool isParrying = false;

    private void Start()
    {
        if (weaponCollider)
            weaponCollider.Initialize(this); // 🟩 link back to this controller
    }

    private void OnEnable()
    {
        if (comboManager != null)
            comboManager.OnComboReset += ResetAttackCombo;
    }

    private void OnDisable()
    {
        if (comboManager != null)
            comboManager.OnComboReset -= ResetAttackCombo;
    }

    private void Update()
    {
        if (Input.GetMouseButtonDown(0))
            TryAttack();

        if (Input.GetMouseButtonDown(1))
            TryParry();
    }

    // --- ATTACK ---
    public void TryAttack()
    {
        if (!canAttack) return;

        bool perfect = scheduler.IsInAttackWindow(attackWindow);
        if (!perfect)
        {
            Debug.Log("Missed Attack!");
            comboManager?.ResetCombo();
            return;
        }

        attackCount++;
        Debug.Log($"Perfect Attack #{attackCount}");

        if (animator && attackTriggers.Length > 0)
        {
            string trigger = attackTriggers[(attackCount - 1) % attackTriggers.Length];
            animator.SetTrigger(trigger);
        }

        StartCoroutine(AttackCooldown());
    }

    private IEnumerator AttackCooldown()
    {
        canAttack = false;
        yield return new WaitForSeconds(attackCooldown);
        canAttack = true;
    }

    public void OnSuccessfulHit()
    {
        comboManager?.AddCombo();

        if (!string.IsNullOrEmpty(attackHitEvent))
            RuntimeManager.PlayOneShot(attackHitEvent, transform.position);
    }

    // --- PARRY ---
    public void TryParry()
    {
        bool perfect = scheduler.IsInAttackWindow(parryWindow);

        if (perfect && !isParrying)
        {
            Debug.Log("Perfect Parry!");
            comboManager?.AddCombo();

            if (animator)
                animator.SetTrigger("Parry");

            playerStats?.RegainStamina(parryStaminaGain);

            if (!string.IsNullOrEmpty(parryHitEvent))
                RuntimeManager.PlayOneShot(parryHitEvent, transform.position);

            StartCoroutine(ParryActiveState());
        }
        else
        {
            Debug.Log("Failed Parry!");
            comboManager?.ResetCombo();
        }
    }

    private IEnumerator ParryActiveState()
    {
        isParrying = true;
        Debug.Log("🛡 Parry active — player immune!");
        yield return new WaitForSeconds(parryActiveDuration);
        isParrying = false;
        Debug.Log("⚠️ Parry window ended.");
    }

    private void ResetAttackCombo()
    {
        attackCount = 0;
        Debug.Log("Attack combo reset due to combo timer expiry!");
    }
}
