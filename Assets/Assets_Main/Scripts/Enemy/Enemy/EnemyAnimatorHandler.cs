using UnityEngine;

public class EnemyAnimatorHandler : MonoBehaviour
{
    [Header("Animator Settings")]
    public Animator animator;

    private int moveSpeedHash;
    private int attackTriggerHash;
    private int deathTriggerHash;
    private int knockbackTriggerHash;

    private bool isDead = false;

    void Awake()
    {
        if (animator == null)
            animator = GetComponent<Animator>();

        moveSpeedHash = Animator.StringToHash("MoveSpeed");
        attackTriggerHash = Animator.StringToHash("Attack");
        deathTriggerHash = Animator.StringToHash("Death");
        knockbackTriggerHash = Animator.StringToHash("Knockback");
    }

    public void SetMoveSpeed(float speed)
    {
        if (isDead) return;
        animator.SetFloat(moveSpeedHash, speed);
    }

    public void PlayAttack()
    {
        if (isDead) return;
        animator.SetTrigger(attackTriggerHash);
    }

    public void PlayDeath()
    {
        if (isDead) return;
        isDead = true;

        animator.ResetTrigger(attackTriggerHash);
        animator.SetTrigger(deathTriggerHash);
        animator.SetFloat(moveSpeedHash, 0);
    }

    public void PlayKnockback()
    {
        if (isDead) return;
        animator.SetTrigger(knockbackTriggerHash);
    }
    
    public void PlayGuardHit()
    {
        animator.SetTrigger("GuardHit");
    }
}