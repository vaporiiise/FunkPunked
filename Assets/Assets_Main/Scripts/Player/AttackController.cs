using UnityEngine;
using System.Collections;
using FMODUnity;

[RequireComponent(typeof(PlayerStats))]
public class AttackController : MonoBehaviour
{
    [Header("References")]
    [SerializeField] private WeaponCollider weaponCollider;
    [SerializeField] private GameObject weaponModel;
    [SerializeField] private PlayerAnimationHandler animHandler;

    [HideInInspector] public PlayerStats playerStats;
    private Rigidbody rb;

    private bool isAttacking = false;
    private bool queuedAttack = false;

    private float combatTimer = 0f;

    private bool isHitStopping = false;

    [Header("FMOD Events")]
    [SerializeField] private EventReference attackSFX;
    [SerializeField] private EventReference hitSFX;
    [SerializeField] private EventReference parrySFX;

    [Header("Attack Settings")]
    public float inCombatDuration = 2f;
    public float hitStopDuration = 0.1f;
    public float hitSlowFactor = 0.05f;

    [Header("Parry/Block Settings")]
    public float parryClickThreshold = 0.25f;
    private float rmbHoldTime = 0f;
    
    [Header("Attack Trails")]
    [SerializeField] private TrailRenderer[] attackTrails; 

    [HideInInspector] public bool isBlocking = false;
    [HideInInspector] public bool isParrying = false;

    private void Start()
    {
        playerStats = GetComponent<PlayerStats>();
        rb = GetComponent<Rigidbody>();

        if (weaponCollider != null)
            weaponCollider.Initialize(this);

        SetWeaponVisible(false);
    }

    private void Update()
    {
        HandleAttackInput();
        HandleRMBInput();
        UpdateCombatTimer();
        
        if (!isAttacking && attackTrails != null)
        {
            foreach (TrailRenderer trail in attackTrails)
                if (trail != null) trail.emitting = false;
        }
    }

    // -------------------------
    // Attack Input + Queue
    // -------------------------
    private void HandleAttackInput()
    {
        if (Input.GetMouseButtonDown(0))
        {
            if (!isAttacking)
            {
                StartCoroutine(PerformAttack());
            }
            else if (!queuedAttack)
            {
                queuedAttack = true; 
            }
        }
    }

    private IEnumerator PerformAttack()
    {
        isAttacking = true;
        queuedAttack = false;

        combatTimer = inCombatDuration;
        SetWeaponVisible(true);

        animHandler.PlayAttack();

        if (!attackSFX.IsNull)
            RuntimeManager.PlayOneShot(attackSFX, transform.position);

        yield return new WaitUntil(() => animHandler.canQueueNext);

        isAttacking = false;

        if (queuedAttack)
            StartCoroutine(PerformAttack());
    }

    // -------------------------
    // Block / Parry
    // -------------------------
    private void HandleRMBInput()
    {
        if (Input.GetMouseButton(1))
        {
            rmbHoldTime += Time.deltaTime;

            if (rmbHoldTime > parryClickThreshold && !isBlocking)
            {
                isBlocking = true;
                animHandler.SetBlocking(true);
            }
        }

        if (Input.GetMouseButtonUp(1))
        {
            if (rmbHoldTime <= parryClickThreshold)
            {
                isParrying = true;
                animHandler.PlayParry();
                PlayParrySound();
            }

            rmbHoldTime = 0f;
            isBlocking = false;
            animHandler.SetBlocking(false);
        }
    }

    // -------------------------
    // Hit Stop
    // -------------------------
    public void OnSuccessfulHit()
    {
        combatTimer = inCombatDuration;
        SetWeaponVisible(true);

        if (!hitSFX.IsNull)
            RuntimeManager.PlayOneShot(hitSFX, transform.position);

        if (!isHitStopping)
            StartCoroutine(HitStopCoroutine());
    }

    private IEnumerator HitStopCoroutine()
    {
        isHitStopping = true;

        float originalTimeScale = Time.timeScale;
        Time.timeScale = hitSlowFactor;
        animHandler.SetSpeedMultiplier(0f);

        if (rb != null)
            rb.linearVelocity = Vector3.zero;

        yield return new WaitForSecondsRealtime(hitStopDuration);

        Time.timeScale = originalTimeScale;
        animHandler.ResetSpeed();
        isHitStopping = false;
    }

    // -------------------------
    // Auto-hide weapon
    // -------------------------
    private void UpdateCombatTimer()
    {
        if (combatTimer > 0f)
        {
            combatTimer -= Time.deltaTime;

            if (combatTimer <= 0f && !isAttacking)
                SetWeaponVisible(false);
        }
    }

    // -------------------------
    // Weapon Collider / Visibility
    // -------------------------
    public void EnableWeaponCollider() => weaponCollider?.EnableDamage();
    public void DisableWeaponCollider() => weaponCollider?.DisableDamage();
    public void HideWeapon() => SetWeaponVisible(false);

    public void SetWeaponVisible(bool visible)
    {
        if (weaponModel != null)
            weaponModel.SetActive(visible);
    }

    // -------------------------
    // SFX
    // -------------------------
    public void PlayParrySound()
    {
        if (!parrySFX.IsNull)
            RuntimeManager.PlayOneShot(parrySFX, transform.position);
    }
    
    public void StartAttackTrails()
    {
        if (attackTrails == null) return;
    
        foreach (TrailRenderer trail in attackTrails)
        {
            if (trail == null) continue;
            trail.Clear();        
            trail.emitting = true; 
        }
    }
    
    public void StopAttackTrails()
    {
        if (attackTrails == null) return;
    
        foreach (TrailRenderer trail in attackTrails)
        {
            if (trail == null) continue;
            trail.emitting = false; 
        }
    }

}
