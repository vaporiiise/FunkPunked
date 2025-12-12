using UnityEngine;
using System;
using System.Collections;

public class GuardCombat : MonoBehaviour
{
    public float damage = 10f;
    public float attackCooldown = 2f;
    public float hitDelay = 0.4f;
    public float attackWindup = 0.3f;       // Delay before parry window opens
    public float parryWindowDuration = 0.25f; // Duration parry is active
    public float knockbackForce = 10f;

    private Transform player;
    private EnemyAnimatorHandler animator;
    private EnemyMovement movement;
    private bool busy = false;

    private PlayerParry playerParry;

    public void Initialize(Transform target)
    {
        player = target;
        animator = GetComponentInChildren<EnemyAnimatorHandler>();
        movement = GetComponent<EnemyMovement>();
        playerParry = player.GetComponent<PlayerParry>();

        if (playerParry != null)
        {
            PlayerParry.OnParrySuccessful += OnPlayerParry;
            PlayerParry.OnParryBurst += OnPlayerParryBurst;
        }
    }

    void OnDestroy()
    {
        if (playerParry != null)
        {
            PlayerParry.OnParrySuccessful -= OnPlayerParry;
            PlayerParry.OnParryBurst -= OnPlayerParryBurst;
        }
    }

    private void OnPlayerParry()
    {
        if (!enabled) return;
        GetComponent<Enemy>()?.GetParried();
        Debug.Log("🟦 Enemy detected player parry!");
    }

    private void OnPlayerParryBurst()
    {
        if (!enabled) return;
        Debug.Log("💥 Enemy hit by 4th parry! Applying knockback.");

        Rigidbody rb = GetComponent<Rigidbody>();
        if (rb != null)
        {
            Vector3 dir = (transform.position - player.position).normalized;
            rb.AddForce(dir * knockbackForce, ForceMode.Impulse);
        }

        GetComponent<EnemyAnimatorHandler>()?.PlayKnockback();
        GetComponent<Enemy>()?.GetParried();
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

        // Wait for windup before parry can occur
        yield return new WaitForSeconds(attackWindup);

        // Enable player parry window
        playerParry?.EnableParryWindow(parryWindowDuration);

        // Wait until hit moment
        yield return new WaitForSeconds(hitDelay - attackWindup);

        // Deal damage if player still in range
        if (Vector3.Distance(transform.position, player.position) <= movement.attackRange)
        {
            player.GetComponent<PlayerStats>()?.TakeDamage(damage);
        }

        // Wait remaining cooldown
        yield return new WaitForSeconds(attackCooldown - hitDelay);

        movement.Resume();
        busy = false;

        onFinish?.Invoke();
    }
}
