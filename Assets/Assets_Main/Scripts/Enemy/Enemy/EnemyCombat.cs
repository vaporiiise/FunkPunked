using UnityEngine;
using System.Collections;

public class EnemyCombat : MonoBehaviour
{
    [Header("Combat Settings")]
    public float damage = 10f;
    public float attackCooldown = 2f;
    public float attackHitDelay = 0.5f;

    [Header("References")]
    public Transform player;

    private EnemyAnimatorHandler animHandler;
    private EnemyMovement movement;
    private EnemyHealth health;

    private bool isAttacking = false;
    private bool canAttack = true;

    void Awake()
    {
        animHandler = GetComponentInChildren<EnemyAnimatorHandler>();
        movement = GetComponent<EnemyMovement>();
        health = GetComponent<EnemyHealth>();

        if (player == null)
        {
            GameObject p = GameObject.FindGameObjectWithTag("Player");
            if (p != null)
                player = p.transform;
        }
    }

    public bool CanAttack()
    {
        return canAttack && !isAttacking && player != null;
    }

    public void TriggerAttack()
    {
        if (!CanAttack()) return;
        StartCoroutine(AttackRoutine());
    }

    private IEnumerator AttackRoutine()
    {
        isAttacking = true;
        canAttack = false;

        movement.SetStopForAttack(true);
        animHandler?.PlayAttack();

        yield return new WaitForSeconds(attackHitDelay);

        if (player != null)
        {
            float dist = Vector3.Distance(transform.position, player.position);
            if (dist <= movement.attackRange)
            {
                var attackController = player.GetComponent<AttackController>();
                if (attackController != null)
                    attackController.playerStats.TakeDamage(damage);
            }
        }

        float remaining = attackCooldown - attackHitDelay;
        if (remaining < 0) remaining = 0;
        yield return new WaitForSeconds(remaining);

        movement.SetStopForAttack(false);

        isAttacking = false;
        canAttack = true;
    }
}