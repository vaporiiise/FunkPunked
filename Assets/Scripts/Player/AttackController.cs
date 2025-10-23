using UnityEngine;
using System.Collections;
using FMODUnity;

[RequireComponent(typeof(PlayerStats))]
public class AttackController : MonoBehaviour
{
    [Header("References")]
    [SerializeField] private Animator animator;
    [SerializeField] private WeaponCollider weaponCollider;
    [SerializeField] private GameObject weaponModel;
    [SerializeField] private BeatScheduler scheduler;
    [SerializeField] private ComboManager comboManager; 

    private PlayerStats playerStats;
    private Rigidbody rb;

    [Header("FMOD Events")]
    [SerializeField] private EventReference attackSFX;
    [SerializeField] private EventReference hitSFX;
    [SerializeField] private EventReference parrySFX;

    [Header("Attack Settings")]
    public float attackCooldown = 0.4f;
    public float inCombatDuration = 2f;
    public float comboResetTime = 1f;
    public float hitStopDuration = 0.1f;  
    public float hitSlowFactor = 0.05f;  

    private float combatTimer = 0f;
    private float comboTimer = 0f;

    private bool canAttack = true;
    private int comboStep = 0;
    [HideInInspector] public bool isParrying = false;

    private void Start()
    {
        playerStats = GetComponent<PlayerStats>();
        rb = GetComponent<Rigidbody>();

        if (weaponCollider != null)
        {
            weaponCollider.Initialize(this);
            weaponCollider.EnableDamage();
        }

        SetWeaponVisible(false);

        if (comboManager == null)
            comboManager = FindObjectOfType<ComboManager>();
    }

    private void Update()
    {
        HandleAttackInput();
        HandleWeaponVisibilityTimer();
        HandleComboTimer();
    }

    private void HandleAttackInput()
    {
        if (Input.GetMouseButtonDown(0) && canAttack)
            StartCoroutine(PerformAttack());
    }

    private IEnumerator PerformAttack()
    {
        canAttack = false;
        combatTimer = inCombatDuration;
        comboTimer = comboResetTime;
        SetWeaponVisible(true);

        comboStep++;
        if (comboStep > 2)
            comboStep = 1;

        animator?.SetTrigger("Attack" + comboStep);

        if (!attackSFX.IsNull)
            RuntimeManager.PlayOneShot(attackSFX, transform.position);

        yield return new WaitForSeconds(attackCooldown);
        canAttack = true;
    }

    private void HandleComboTimer()
    {
        if (comboTimer > 0)
        {
            comboTimer -= Time.deltaTime;
            if (comboTimer <= 0)
                comboStep = 0;
        }
    }

    public void OnSuccessfulHit()
    {
        combatTimer = inCombatDuration;
        SetWeaponVisible(true);

        comboManager?.AddCombo();

        if (!hitSFX.IsNull)
            RuntimeManager.PlayOneShot(hitSFX, transform.position);

        StartCoroutine(HitStopCoroutine());
    }

    private IEnumerator HitStopCoroutine()
    {
        float originalTimeScale = Time.timeScale;
        Time.timeScale = hitSlowFactor;
        animator.speed = 0f;
        if (rb != null) rb.linearVelocity = Vector3.zero;

        yield return new WaitForSecondsRealtime(hitStopDuration);

        Time.timeScale = originalTimeScale;
        animator.speed = 1f;
    }

    private void HandleWeaponVisibilityTimer()
    {
        if (combatTimer > 0)
        {
            combatTimer -= Time.deltaTime;
            if (combatTimer <= 0)
                SetWeaponVisible(false);
        }
    }

    public void SetWeaponVisible(bool visible)
    {
        if (weaponModel != null)
            weaponModel.SetActive(visible);

        if (visible)
            combatTimer = inCombatDuration;
    }

    public void PlayParrySound()
    {
        if (!parrySFX.IsNull)
            RuntimeManager.PlayOneShot(parrySFX, transform.position);
    }
}
