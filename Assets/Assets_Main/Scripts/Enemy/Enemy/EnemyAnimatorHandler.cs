using UnityEngine;

public class EnemyAnimatorHandler : MonoBehaviour
{
    private Animator animator;

    void Awake()
    {
        animator = GetComponent<Animator>();
        if (animator == null)
            Debug.LogWarning("No Animator found on EnemyAnimatorHandler!");
    }

    public void SetMoveSpeed(float speed)
    {
        if (animator != null)
            animator.SetFloat("Speed", speed, 0.1f, Time.deltaTime);
    }

    public void PlayAttack()
    {
        if (animator != null)
            animator.SetTrigger("Attack1"); 
    }

    public void PlayHit()
    {
        if (animator != null)
            animator.SetTrigger("Hit");
    }

    public void PlayDie()
    {
        if (animator != null)
            animator.SetTrigger("Death");
    }
}