using UnityEngine;

public class AttackController : MonoBehaviour
{
    [SerializeField] private BeatScheduler scheduler;

    [Header("Timing Windows (seconds)")]
    public float attackWindow = 0.15f;
    public float parryWindow = 0.08f;

    [Header("Combat")]
    public float attackRange = 2f;
    public LayerMask enemyLayer;

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
    }

    public void TryParry()
    {
        if (scheduler.IsInAttackWindow(parryWindow))
        {
            Debug.Log("Perfect Parry!");
            ParryEnemy();
        }
        else
        {
            Debug.Log("Failed Parry!");
        }
    }

    private void HitEnemy()
    {
        RaycastHit hit;

        // Debug ray (draw in Scene view, not Game view)
        Debug.DrawRay(transform.position, transform.forward * attackRange, Color.red, 1f);

        if (Physics.Raycast(transform.position, transform.forward, out hit, attackRange, enemyLayer))
        {
            Debug.Log("Hit " + hit.collider.name);

            PunchingBag bag = hit.collider.GetComponent<PunchingBag>();
            if (bag != null)
            {
                Vector3 hitDirection = hit.point - transform.position;
                bag.TakeHit(hitDirection);
            }
        }
        else
        {
            Debug.Log("No enemy hit");
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
