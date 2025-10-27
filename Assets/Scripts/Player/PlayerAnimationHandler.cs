using UnityEngine;

[RequireComponent(typeof(Animator))]
public class PlayerAnimationHandler : MonoBehaviour
{
    private Animator animator;
    private float currentSpeed = 0f;

    [Header("Settings")]
    public float smoothSpeed = 0.1f;

    private void Awake()
    {
        animator = GetComponent<Animator>();
    }

    // ===============================
    // MOVEMENT & STATE
    // ===============================
    public void UpdateMovement(float normalizedSpeed)
    {
        currentSpeed = Mathf.Lerp(currentSpeed, normalizedSpeed, smoothSpeed);
        animator.SetFloat("Speed", currentSpeed);
    }

    public void SetGrounded(bool grounded)
    {
        animator.SetBool("IsGrounded", grounded);
    }

    public void SetDashing(bool isDashing)
    {
        animator.SetBool("IsDashing", isDashing);
    }

    public void SetFalling(bool isFalling)
    {
        animator.SetBool("IsFalling", isFalling);
    }

    public void PlayLand()
    {
        animator.SetTrigger("Land");
    }

    public void PlayJump()
    {
        animator.SetTrigger("Jump");
    }

    public void PlayHit()
    {
        animator.SetTrigger("Hit");
    }

    // ===============================
    // COMBAT
    // ===============================
    public void PlayAttack(int comboStep)
    {
        animator.SetTrigger("Attack" + comboStep);
    }

    public void PlayParry()
    {
        animator.SetTrigger("Parry");
    }

    // ===============================
    // UTILITIES
    // ===============================
    public void SetSpeedMultiplier(float speed)
    {
        animator.speed = speed;
    }

    public void ResetSpeed()
    {
        animator.speed = 1f;
    }
}