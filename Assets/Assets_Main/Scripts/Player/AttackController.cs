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
    private float combatTimer = 0f;

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

    [HideInInspector] public bool isBlocking = false;
    [HideInInspector] public bool isParrying = false;

    // Alternate attack tracking
    private bool nextAttackIsOne = true;

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
        HandleWeaponVisibilityTimer();
    }

    private void HandleAttackInput()
    {
        if (Input.GetMouseButtonDown(0))
            StartCoroutine(PerformAttack());
    }

    private void HandleRMBInput()
    {
        if (Input.GetMouseButton(1))
        {
            rmbHoldTime += Time.deltaTime;
            if (rmbHoldTime > parryClickThreshold && !isBlocking)
            {
                isBlocking = true;
                animHandler?.SetBlocking(true);
            }
        }

        if (Input.GetMouseButtonUp(1))
        {
            if (rmbHoldTime <= parryClickThreshold)
            {
                // CLICK → Parry
                isParrying = true;
                animHandler?.PlayParry();
                PlayParrySound();
            }

            // Reset
            rmbHoldTime = 0f;
            isBlocking = false;
            animHandler?.SetBlocking(false);
        }
    }

    private void HandleWeaponVisibilityTimer()
    {
        if (combatTimer > 0f)
        {
            combatTimer -= Time.deltaTime;
            if (combatTimer <= 0f)
                SetWeaponVisible(false);
        }
    }

    private IEnumerator PerformAttack()
    {
        combatTimer = inCombatDuration;
        SetWeaponVisible(true);

        // Alternate attacks
        if (animHandler != null)
        {
            if (nextAttackIsOne)
                animHandler.PlayAttack(); // will play Attack1
            else
                animHandler.PlayAttack(); // will play Attack2

            nextAttackIsOne = !nextAttackIsOne;
        }

        if (!attackSFX.IsNull)
            RuntimeManager.PlayOneShot(attackSFX, transform.position);

        // Wait for animation duration or inCombatDuration
        yield return new WaitForSeconds(inCombatDuration);

        SetWeaponVisible(false);
    }

    // Called by Animation Event at swing peak
    public void EnableWeaponCollider() => weaponCollider?.EnableDamage();
    public void DisableWeaponCollider() => weaponCollider?.DisableDamage();

    public void PlaySwingSFX()
    {
        if (!attackSFX.IsNull && weaponCollider != null)
            RuntimeManager.PlayOneShot(attackSFX, weaponCollider.transform.position);
    }

    public void OnSuccessfulHit()
    {
        combatTimer = inCombatDuration;
        SetWeaponVisible(true);
        if (!hitSFX.IsNull)
            RuntimeManager.PlayOneShot(hitSFX, transform.position);
        StartCoroutine(HitStopCoroutine());
    }

    private IEnumerator HitStopCoroutine()
    {
        float originalTimeScale = Time.timeScale;
        Time.timeScale = hitSlowFactor;
        animHandler?.SetSpeedMultiplier(0f);
        if (rb != null) rb.linearVelocity = Vector3.zero;
        yield return new WaitForSecondsRealtime(hitStopDuration);
        Time.timeScale = originalTimeScale;
        animHandler?.ResetSpeed();
    }

    public void SetWeaponVisible(bool visible)
    {
        if (weaponModel != null)
            weaponModel.SetActive(visible);
    }

    public void PlayParrySound()
    {
        if (!parrySFX.IsNull)
            RuntimeManager.PlayOneShot(parrySFX, transform.position);
    }
}
