using UnityEngine;
using System;
using System.Collections;

public class EnemyCombat : MonoBehaviour
{
    public float damage = 10f;
    public float attackCooldown = 2f;
    public float hitDelay = 0.4f;

    private Transform player;
    private EnemyAnimatorHandler animator;
    private EnemyMovement movement;
    private bool busy = false;

    public void Initialize(Transform target)
    {
        player = target;
        animator = GetComponentInChildren<EnemyAnimatorHandler>();
        movement = GetComponent<EnemyMovement>();
    }

    public void DoAttack(Action onFinish)
    {
        if (busy) return;
        StartCoroutine(AttackRoutine(onFinish));
    }

    IEnumerator AttackRoutine(Action onFinish)
    {
        busy = true;

        movement.StopInstant();
        animator.PlayAttack();

        yield return new WaitForSeconds(hitDelay);

        if (Vector3.Distance(transform.position, player.position) <= movement.attackRange)
        {
            player.GetComponent<PlayerStats>()?.TakeDamage(damage);
        }

        yield return new WaitForSeconds(attackCooldown - hitDelay);

        movement.Resume();
        busy = false;

        onFinish?.Invoke();
    }
}