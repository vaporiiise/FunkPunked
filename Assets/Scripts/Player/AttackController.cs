using UnityEngine;
using FMODUnity;

public class AttackController : MonoBehaviour
{
    [Header("References")]
    [SerializeField] private BeatScheduler scheduler;
    [SerializeField] private PlayerStats playerStats;
    [SerializeField] private ComboManager comboManager;

    [Header("Timing Windows (seconds)")]
    public float attackWindow = 0.18f;
    public float parryWindow = 0.2f;

    [Header("Combat Settings")]
    public float attackRange = 2f;
    public float sphereRadius = 0.6f;
    public float knockbackForce = 10f;
    public LayerMask enemyLayer;

    [Header("Animation")]
    public Animator animator;
    public string[] attackTriggers = { "Attack1", "Attack2" };
    private int attackCount = 0;

    [Header("Stamina")]
    public float parryStaminaGain = 25f;
    public float failedParryPenalty = 30f;

    [Header("FMOD Events")]
    [EventRef] public string attackHitEvent;
    [EventRef] public string parryHitEvent;
    [EventRef] public string parryFailEvent;

    private void Update()
    {
        // For testing — you can replace with your input system
        if (Input.GetMouseButtonDown(0))
            TryAttack();

        if (Input.GetMouseButtonDown(1))
            TryParry();
    }

    // --- ATTACK SYSTEM ---
    public void TryAttack()
    {
        bool perfect = scheduler.IsInAttackWindow(attackWindow);

        if (perfect)
        {
            attackCount++;
            Debug.Log($"Perfect Attack #{attackCount}");

            // Animation (if assigned)
            if (animator != null && attackTriggers.Length > 0)
            {
                string trigger = attackTriggers[(attackCount - 1) % attackTriggers.Length];
                animator.SetTrigger(trigger);
            }

            PerformAttack();
            comboManager?.AddCombo();

            if (!string.IsNullOrEmpty(attackHitEvent))
                RuntimeManager.PlayOneShot(attackHitEvent, transform.position);

            // Loop attack count
            if (attackCount >= 3)
                attackCount = 0;
        }
        else
        {
            Debug.Log("Missed Attack!");
            comboManager?.ResetCombo();
        }
    }

    private void PerformAttack()
    {
        if (Physics.SphereCast(transform.position, sphereRadius, transform.forward, out RaycastHit hit, attackRange, enemyLayer))
        {
            Enemy enemy = hit.collider.GetComponent<Enemy>();
            if (enemy != null)
            {
                enemy.TakeDamage(1f);
                Debug.Log("Hit enemy: " + enemy.name);

                // Apply knockback on every 3rd hit
                if (attackCount == 3)
                {
                    Rigidbody enemyRb = enemy.GetComponent<Rigidbody>();
                    if (enemyRb != null)
                    {
                        Vector3 knockDir = (enemy.transform.position - transform.position).normalized;
                        knockDir.y = 0.3f; // small lift
                        enemyRb.AddForce(knockDir * knockbackForce, ForceMode.Impulse);
                        Debug.Log("Knockback applied!");
                    }
                }
            }
            else
            {
                Debug.Log("Hit something that’s not an enemy!");
            }
        }
        else
        {
            Debug.Log("No enemy hit!");
        }
    }

    // --- PARRY SYSTEM ---
    public void TryParry()
    {
        bool perfect = scheduler.IsInAttackWindow(parryWindow);

        if (perfect)
        {
            Debug.Log("Perfect Parry!");
            comboManager?.AddCombo();

            if (animator != null)
                animator.SetTrigger("Parry");

            if (playerStats != null)
                playerStats.RegainStamina(parryStaminaGain);

            if (!string.IsNullOrEmpty(parryHitEvent))
                RuntimeManager.PlayOneShot(parryHitEvent, transform.position);

            ParryEnemy();
        }
        else
        {
            Debug.Log("Failed Parry!");
            comboManager?.ResetCombo();

            if (animator != null)
                animator.SetTrigger("ParryFail");

            if (playerStats != null)
                playerStats.UseStamina(failedParryPenalty);

            if (!string.IsNullOrEmpty(parryFailEvent))
                RuntimeManager.PlayOneShot(parryFailEvent, transform.position);
        }
    }

    private void ParryEnemy()
    {
        if (Physics.SphereCast(transform.position, sphereRadius, transform.forward, out RaycastHit hit, attackRange, enemyLayer))
        {
            Enemy enemy = hit.collider.GetComponent<Enemy>();
            if (enemy != null)
            {
                Debug.Log("Enemy parried: " + enemy.name);
                // You can add enemy reaction or stun logic here
            }
        }
    }

    // --- GIZMOS ---
    private void OnDrawGizmosSelected()
    {
        Gizmos.color = Color.red;
        Gizmos.DrawWireSphere(transform.position + transform.forward * attackRange * 0.5f, sphereRadius);
    }
}
