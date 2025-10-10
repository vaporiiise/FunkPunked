using UnityEngine;
using FMODUnity;
using UnityEngine.AI;

public class AttackController : MonoBehaviour
{
    [Header("References")]
    [SerializeField] private BeatScheduler scheduler;
    [SerializeField] private PlayerStats playerStats;
    [SerializeField] private ComboManager comboManager;

    [Header("Timing Windows (seconds)")]
    public float attackWindow = 0.18f;
    public float parryWindow = 0.2f;
    private bool canAttack = true;

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

    [Header("Attack Cooldown")]
    public float attackCooldown = 0.25f;

    private void Update()
    {
        if (Input.GetMouseButtonDown(0))
            TryAttack();

        if (Input.GetMouseButtonDown(1))
            TryParry();
    }

    // --- ATTACK SYSTEM ---
    public void TryAttack()
    {
        if (!canAttack) return;

        bool perfect = scheduler.IsInAttackWindow(attackWindow);

        if (perfect)
        {
            attackCount++;
            Debug.Log($"Perfect Attack #{attackCount}");

            // Trigger animation
            if (animator && attackTriggers.Length > 0)
            {
                string trigger = attackTriggers[(attackCount - 1) % attackTriggers.Length];
                animator.SetTrigger(trigger);
            }

            PerformAttack(attackCount);

            comboManager?.AddCombo();

            if (!string.IsNullOrEmpty(attackHitEvent))
                RuntimeManager.PlayOneShot(attackHitEvent, transform.position);

            if (attackCount >= 3)
                attackCount = 0;

            StartCoroutine(AttackCooldown());
        }
        else
        {
            Debug.Log("Missed Attack!");
            comboManager?.ResetCombo();
        }
    }

    private System.Collections.IEnumerator AttackCooldown()
    {
        canAttack = false;
        yield return new WaitForSeconds(attackCooldown);
        canAttack = true;
    }

    private void PerformAttack(int currentAttack)
    {
        if (Physics.SphereCast(transform.position, sphereRadius, transform.forward, out RaycastHit hit, attackRange, enemyLayer))
        {
            Enemy enemy = hit.collider.GetComponent<Enemy>();
            if (enemy != null)
            {
                enemy.TakeDamage(1f);

                // Apply knockback on every 3rd hit
                if (currentAttack == 3)
                {
                    Rigidbody enemyRb = enemy.GetComponent<Rigidbody>();
                    NavMeshAgent agent = enemy.GetComponent<NavMeshAgent>();

                    if (agent != null)
                        agent.enabled = false; 

                    if (enemyRb != null)
                    {
                        Vector3 knockDir = (enemy.transform.position - transform.position).normalized;
                        knockDir.y = 0.3f;
                        enemyRb.AddForce(knockDir * knockbackForce, ForceMode.Impulse);
                        Debug.Log("Knockback applied!");
                    }

                    // Re-enable agent after short delay
                    if (agent != null)
                        StartCoroutine(ReenableAgent(agent, 0.8f));
                }
            }
        }
        else
        {
            Debug.Log("No enemy hit!");
        }
    }

    private System.Collections.IEnumerator ReenableAgent(NavMeshAgent agent, float delay)
    {
        yield return new WaitForSeconds(delay);
        if (agent != null)
            agent.enabled = true;
    }

    // --- PARRY SYSTEM ---
    public void TryParry()
    {
        bool perfect = scheduler.IsInAttackWindow(parryWindow);

        if (perfect)
        {
            Debug.Log("Perfect Parry!");
            comboManager?.AddCombo();

            if (animator)
                animator.SetTrigger("Parry");

            playerStats?.RegainStamina(parryStaminaGain);

            if (!string.IsNullOrEmpty(parryHitEvent))
                RuntimeManager.PlayOneShot(parryHitEvent, transform.position);

            ParryEnemy();
        }
        else
        {
            Debug.Log("Failed Parry!");
            comboManager?.ResetCombo();

            if (animator)
                animator.SetTrigger("ParryFail");

            playerStats?.UseStamina(failedParryPenalty);

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
                Debug.Log($"Enemy parried: {enemy.name}");
                // stun enemy or feedbacks here
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
