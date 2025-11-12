using UnityEngine;

public class EnemyAnimatorHandler : MonoBehaviour
{
    [Header("Animator Settings")]
    public Animator animator;

    private int moveSpeedHash;
    private int attackTriggerHash;
    private int deathTriggerHash;
    private int hitTriggerHash;

    private bool isDead = false;

    void Awake()
    {
        if (animator == null)
            animator = GetComponent<Animator>();

        moveSpeedHash = Animator.StringToHash("MoveSpeed");
        attackTriggerHash = Animator.StringToHash("Attack");
        deathTriggerHash = Animator.StringToHash("Death");
        hitTriggerHash = Animator.StringToHash("Hit");
    }

    public void SetMoveSpeed(float speed)
    {
        if (isDead) return;
        animator.SetFloat(moveSpeedHash, speed, 0.1f, Time.deltaTime);
    }

    public void PlayAttack()
    {
        if (isDead) return;
        animator.SetTrigger(attackTriggerHash);
    }

    public void PlayHit()
    {
        if (isDead) return;
        animator.SetTrigger(hitTriggerHash);
    }

    public void PlayDie()
    {
        if (isDead) return;
        isDead = true;
        animator.SetTrigger(deathTriggerHash);
        animator.SetFloat(moveSpeedHash, 0);
    }
}