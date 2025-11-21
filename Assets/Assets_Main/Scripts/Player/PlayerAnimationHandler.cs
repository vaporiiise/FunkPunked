using UnityEngine;

[RequireComponent(typeof(Animator))]
public class PlayerAnimationHandler : MonoBehaviour
{
    private Animator animator;

    private float currentSpeed = 0f;

    [Header("Settings")]
    public float smoothSpeed = 0.1f;

    // Combo
    private int attackComboStep = 1;
    private int maxCombo = 6; // Number of attacks in Animator

    [HideInInspector] public bool canQueueNext = true; // FLAG for next attack

    private void Awake()
    {
        animator = GetComponent<Animator>();
    }

    // -------------------------
    // Movement
    // -------------------------
    public void UpdateMovement(float normalizedSpeed)
    {
        currentSpeed = Mathf.Lerp(currentSpeed, normalizedSpeed, smoothSpeed);
        animator.SetFloat("Speed", currentSpeed);
    }

    public void SetGrounded(bool grounded) => animator.SetBool("IsGrounded", grounded);
    public void SetDashing(bool isDashing) => animator.SetBool("IsDashing", isDashing);
    public void SetFalling(bool isFalling) => animator.SetBool("IsFalling", isFalling);
    public void SetBlocking(bool blocking) => animator.SetBool("IsBlocking", blocking);

    // -------------------------
    // Attacks + Combo
    // -------------------------
    public void PlayAttack()
    {
        if (!canQueueNext) return; // prevent overlapping

        animator.SetTrigger("Attack" + attackComboStep);
        canQueueNext = false; // block next until animation event

        // increment combo
        attackComboStep++;
        if (attackComboStep > maxCombo)
            attackComboStep = 1;
    }

    // Call this from animation event where the next attack can be queued
    public void EnableNextAttack()
    {
        canQueueNext = true;
    }

    public void PlayHit() => animator.SetTrigger("Hit");
    public void PlayLand() => animator.SetTrigger("Land");
    public void PlayJump() => animator.SetTrigger("Jump");
    public void PlayParry() => animator.SetTrigger("Parry");

    public void SetSpeedMultiplier(float speed) => animator.speed = speed;
    public void ResetSpeed() => animator.speed = 1f;
}
