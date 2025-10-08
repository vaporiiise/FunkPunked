using UnityEngine;
using FMODUnity;

public class AttackController : MonoBehaviour
{
    [Header("Dependencies")]
    [SerializeField] private BeatScheduler scheduler;
    [SerializeField] private PlayerStats playerStats;
    [SerializeField] private ComboManager comboManager;

    [Header("Timing Windows (seconds)")]
    public float attackWindow = 0.18f;
    public float parryWindow = 0.2f;

    [Header("Combat Settings")]
    public float attackRange = 2f;          // Distance forward to hit
    public float hitRadius = 1.2f;          // Width of the melee hit area
    public LayerMask enemyLayer;

    [Header("Stamina Settings")]
    public float parryStaminaGain = 25f;
    public float failedParryPenalty = 30f;

    [Header("Animation")]
    public Animator animator;
    public string[] attackTriggers = { "Attack1", "Attack2" };
    private int nextAttackIndex = 0;

    [Header("FMOD Events")]
    [EventRef] public string attackHitEvent;
    [EventRef] public string parryHitEvent;
    [EventRef] public string parryFailEvent;

    // ───────────────────────────────────────────────
    public void TryAttack()
    {
        bool perfect = scheduler != null && scheduler.IsInAttackWindow(attackWindow);

        if (perfect)
        {
            Debug.Log("Perfect Attack!");
            HitEnemy();
            comboManager?.AddCombo();

            // Alternate attack animations
            if (animator != null && attackTriggers.Length > 0)
            {
                string trigger = attackTriggers[nextAttackIndex];
                animator.SetTrigger(trigger);
                nextAttackIndex = (nextAttackIndex + 1) % attackTriggers.Length;
            }

            if (!string.IsNullOrEmpty(attackHitEvent))
                RuntimeManager.PlayOneShot(attackHitEvent, transform.position);
        }
        else
        {
            Debug.Log("Missed Attack!");
            comboManager?.ResetCombo();
        }
    }

    // ───────────────────────────────────────────────
    public void TryParry()
    {
        bool perfect = scheduler != null && scheduler.IsInAttackWindow(parryWindow);

        if (perfect)
        {
            Debug.Log("Perfect Parry!");
            ParryEnemy();
            comboManager?.AddCombo();

            if (animator != null)
                animator.SetTrigger("Parry");

            playerStats?.RegainStamina(parryStaminaGain);

            if (!string.IsNullOrEmpty(parryHitEvent))
                RuntimeManager.PlayOneShot(parryHitEvent, transform.position);
        }
        else
        {
            Debug.Log("Failed Parry!");
            comboManager?.ResetCombo();

            if (animator != null)
                animator.SetTrigger("ParryFail");

            playerStats?.UseStamina(failedParryPenalty);

            if (!string.IsNullOrEmpty(parryFailEvent))
                RuntimeManager.PlayOneShot(parryFailEvent, transform.position);
        }
    }

    // ───────────────────────────────────────────────
    private void HitEnemy()
    {
        Vector3 attackOrigin = transform.position + transform.forward * (attackRange * 0.5f);
        Collider[] hits = Physics.OverlapSphere(attackOrigin, hitRadius, enemyLayer);

        if (hits.Length > 0)
        {
            foreach (Collider hit in hits)
            {
                Enemy enemy = hit.GetComponent<Enemy>();
                if (enemy != null)
                {
                    enemy.TakeDamage(1f);
                    Debug.Log("Hit enemy: " + enemy.name);
                }
            }
        }
        else
        {
            Debug.Log("No enemies hit!");
        }
    }

    // ───────────────────────────────────────────────
    private void ParryEnemy()
    {
        Vector3 attackOrigin = transform.position + transform.forward * (attackRange * 0.5f);
        Collider[] hits = Physics.OverlapSphere(attackOrigin, hitRadius, enemyLayer);

        foreach (Collider hit in hits)
        {
            Enemy enemy = hit.GetComponent<Enemy>();
            if (enemy != null)
            {
                // Optional: enemy.Parried();
                Debug.Log("Parried enemy: " + enemy.name);
            }
        }
    }

    // ───────────────────────────────────────────────
    private void OnDrawGizmosSelected()
    {
        Gizmos.color = Color.yellow;
        Vector3 attackOrigin = transform.position + transform.forward * (attackRange * 0.5f);
        Gizmos.DrawWireSphere(attackOrigin, hitRadius);

        Gizmos.color = Color.red;
        Gizmos.DrawLine(transform.position, transform.position + transform.forward * attackRange);
    }
}
