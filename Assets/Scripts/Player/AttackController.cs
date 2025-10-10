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

    [Header("Timing Windows (seconds)")]
    public float attackWindow = 0.18f;
    public float parryWindow = 0.2f;
    private bool canAttack = true;

    [Header("Combat Settings")]
    public float attackRange = 2f;
    public float hitRadius = 0.8f;
    public float knockbackForce = 10f;
    public LayerMask enemyLayer;

    [Header("Animation")]
    public Animator animator;
    public string[] attackTriggers = { "Attack1", "Attack2", "Attack3" };
    private int attackCount = 0;

    [Header("Stamina & Parry")]
    public float parryStaminaGain = 25f;

    [Header("FMOD Events")]
    [EventRef] public string attackHitEvent;
    [EventRef] public string parryHitEvent;

    [Header("Attack Cooldown")]
    public float attackCooldown = 0.25f;

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

    // --- ATTACK SYSTEM ---
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

        // Trigger attack animation regardless of hit
        if (animator && attackTriggers.Length > 0)
        {
            string trigger = attackTriggers[(attackCount - 1) % attackTriggers.Length];
            animator.SetTrigger(trigger);
        }

        // Check if the attack actually hits an enemy
        bool hitEnemy = PerformAttack(attackCount);

        // Only add combo and play FMOD if hit
        if (hitEnemy)
        {
            comboManager?.AddCombo();

            if (!string.IsNullOrEmpty(attackHitEvent))
                RuntimeManager.PlayOneShot(attackHitEvent, transform.position);
        }

        if (attackCount >= attackTriggers.Length)
            attackCount = 0;

        StartCoroutine(AttackCooldown());
    }

    private IEnumerator AttackCooldown()
    {
        canAttack = false;
        yield return new WaitForSeconds(attackCooldown);
        canAttack = true;
    }

    private bool PerformAttack(int currentAttack)
    {
        Vector3 attackCenter = transform.position + transform.forward * (attackRange * 0.5f);
        Collider[] hits = Physics.OverlapSphere(attackCenter, hitRadius, enemyLayer);

        if (hits.Length == 0)
        {
            Debug.Log("Attack hit nothing!");
            return false; // no enemy hit
        }

        foreach (Collider col in hits)
        {
            Enemy enemy = col.GetComponent<Enemy>();
            if (enemy != null)
            {
                enemy.TakeDamage(1f);

                // Apply knockback on every 3rd attack
                if (currentAttack % 3 == 0)
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

                    if (agent != null)
                        StartCoroutine(ReenableAgent(agent, 0.8f));
                }
            }
        }

        return true; // at least one enemy hit
    }

    private IEnumerator ReenableAgent(NavMeshAgent agent, float delay)
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
            Debug.Log("Failed Parry! (No animation)");
            comboManager?.ResetCombo();
        }
    }

    private void ParryEnemy()
    {
        Vector3 parryCenter = transform.position + transform.forward * (attackRange * 0.5f);
        Collider[] hits = Physics.OverlapSphere(parryCenter, hitRadius, enemyLayer);

        foreach (Collider col in hits)
        {
            Enemy enemy = col.GetComponent<Enemy>();
            if (enemy != null)
            {
                Debug.Log($"Enemy parried: {enemy.name}");
                // Stun enemy for 2 seconds
                enemy.Stun(2f);
            }
        }
    }

    // --- RESET ATTACK COMBO ON COMBO TIMER EXPIRY ---
    private void ResetAttackCombo()
    {
        attackCount = 0;
        Debug.Log("Attack combo reset due to combo timer expiry!");
    }

    private void OnDrawGizmosSelected()
    {
        Gizmos.color = Color.red;
        Vector3 center = transform.position + transform.forward * (attackRange * 0.5f);
        Gizmos.DrawWireSphere(center, hitRadius);
    }
}
