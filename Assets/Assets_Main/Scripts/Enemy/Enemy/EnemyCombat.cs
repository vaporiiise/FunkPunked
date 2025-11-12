using UnityEngine;
using System.Collections;

public class EnemyCombat : MonoBehaviour
{
    [Header("Combat Settings")]
    public float damage = 10f;
    public float attackCooldown = 2f;
    public float attackHitDelay = 0.5f; // When hit actually lands

    [Header("References")]
    public Transform player;

    private EnemyAnimatorHandler animHandler;
    private EnemyHealth health;
    private EnemyMovement movement;

    private bool canAttack = true;

    private void Awake()
    {
        animHandler = GetComponentInChildren<EnemyAnimatorHandler>();
        movement = GetComponent<EnemyMovement>();
        health = GetComponent<EnemyHealth>();

        if (player == null)
        {
            GameObject p = GameObject.FindGameObjectWithTag("Player");
            if (p != null) player = p.transform;
        }
    }

    public bool CanAttack() => canAttack && player != null;

    public void TriggerAttack()
    {
        if (!CanAttack()) return;

        StartCoroutine(AttackRoutine());
    }

    private IEnumerator AttackRoutine()
    {
        canAttack = false;
        movement.SetStopForAttack(true);

        // Play attack animation
        animHandler?.PlayAttack();

        // Wait for animation peak / hit delay
        yield return new WaitForSeconds(attackHitDelay);

        // Deal damage to player if still in range
        if (player != null)
        {
            float distance = Vector3.Distance(transform.position, player.position);
            if (distance <= movement.attackRange)
            {
                // Example: assume player has AttackController with TakeDamage
                var attackController = player.GetComponent<AttackController>();
                if (attackController != null)
                    attackController.playerStats.TakeDamage(damage);
            }
        }

        // Optional downtime before next attack
        yield return new WaitForSeconds(attackCooldown - attackHitDelay);

        movement.SetStopForAttack(false);
        canAttack = true;
    }
    
}
