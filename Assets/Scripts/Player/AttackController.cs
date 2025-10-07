using UnityEngine;

public class AttackController : MonoBehaviour
{
    [SerializeField] private BeatScheduler scheduler;
    [SerializeField] private PlayerStats playerStats;
    [SerializeField] private ComboManager comboManager;

    [Header("Timing Windows (seconds)")]
    public float attackWindow = 0.18f;
    public float parryWindow = 0.2f;

    [Header("Combat")]
    public float attackRange = 2f;
    public LayerMask enemyLayer;

    [Header("Stamina Settings")]
    public float parryStaminaGain = 25f;
    public float failedParryPenalty = 30f;

    public void TryAttack()
    {
        if (scheduler.IsInAttackWindow(attackWindow))
        {
            Debug.Log("Perfect Attack!");
            HitEnemy();
        }
        else
        {
            Debug.Log("Missed Attack!");
        }
        
        if (scheduler.IsInAttackWindow(attackWindow))
        {
            Debug.Log("Perfect Attack!");
            HitEnemy();
            comboManager?.AddCombo();
        }
        else
        {
            Debug.Log("Missed Attack!");
            comboManager?.ResetCombo();
        }
    }

    public void TryParry()
    {
        if (scheduler.IsInAttackWindow(parryWindow))
        {
            Debug.Log("Perfect Parry!");
            ParryEnemy();

            if (playerStats != null)
                playerStats.RegainStamina(parryStaminaGain);
        }
        else
        {
            Debug.Log("Failed Parry!");

            // Lose stamina for failed parry
            if (playerStats != null)
                playerStats.UseStamina(failedParryPenalty);
        }
        
        if (scheduler.IsInAttackWindow(parryWindow))
        {
            Debug.Log("Perfect Parry!");
            ParryEnemy();
            comboManager?.AddCombo();
        }
        else
        {
            Debug.Log("Failed Parry!");
            comboManager?.ResetCombo();
        }
    }

    private void HitEnemy()
    {
        RaycastHit hit;
        Debug.DrawRay(transform.position, transform.forward * attackRange, Color.red, 1f);

        if (Physics.Raycast(transform.position, transform.forward, out hit, attackRange, enemyLayer))
        {
            PunchingBag bag = hit.collider.GetComponent<PunchingBag>();
            if (bag != null)
            {
                Vector3 hitDirection = hit.point - transform.position;
                bag.TakeHit(hitDirection);
            }
        }
    }

    private void ParryEnemy()
    {
        RaycastHit hit;
        if (Physics.Raycast(transform.position, transform.forward, out hit, attackRange, enemyLayer))
        {
            Enemy enemy = hit.collider.GetComponent<Enemy>();
            if (enemy != null)
            {
                enemy.Parried();
            }
        }
    }
}
