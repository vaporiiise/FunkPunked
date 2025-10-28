using UnityEngine;

public class BossMeleeAttack : MonoBehaviour
{
    public float damage = 10f;
    public float attackRange = 2f;
    public LayerMask playerLayer;

    public void DoMeleeAttack()
    {
        Collider[] hits = Physics.OverlapSphere(transform.position, attackRange, playerLayer);
        foreach (Collider hit in hits)
        {
            if (hit.CompareTag("Player"))
            {
                // Example damage call
                Debug.Log("Boss hit player!");
                // hit.GetComponent<PlayerHealth>()?.TakeDamage(damage);
            }
        }
    }

    private void OnDrawGizmosSelected()
    {
        Gizmos.color = Color.red;
        Gizmos.DrawWireSphere(transform.position, attackRange);
    }
}