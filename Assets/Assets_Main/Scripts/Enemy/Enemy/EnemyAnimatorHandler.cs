using UnityEngine;

public class EnemyAnimatorHandler : MonoBehaviour
{
    [Header("Animator Settings")]
    public Animator animator;

    private int moveSpeedHash;
    private int attackTriggerHash;
    private int deathTriggerHash;

    private bool isDead = false;

    void Awake()
    {
        if (animator == null)
            animator = GetComponent<Animator>();

        moveSpeedHash = Animator.StringToHash("MoveSpeed");
        attackTriggerHash = Animator.StringToHash("Attack");
        deathTriggerHash = Animator.StringToHash("Death");
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
}