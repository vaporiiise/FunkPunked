using UnityEngine;

[RequireComponent(typeof(Animator))]
public class PlayerAnimationHandler : MonoBehaviour
{
    public Animator animator { get; private set; }

    [Header("Movement Settings")]
    private float currentSpeed = 0f;
    [Tooltip("Smoothing speed for movement animations")]
    public float smoothSpeed = 0.15f;

    [Header("Combo Settings")]
    private int attackComboStep = 1;
    private int maxCombo = 6;
    [HideInInspector] public bool canQueueNext = true;

    private void Awake()
    {
        animator = GetComponent<Animator>();
    }

    /// <summary>
    /// Update movement animation
    /// </summary>
    /// <param name="targetSpeed">0 = idle, 0.3 walk, 0.5 run, 0.73 run with weapon</param>
    /// <param name="hasWeapon">true if player holds weapon</param>
    public void UpdateMovement(float targetSpeed, bool hasWeapon)
    {
        currentSpeed = Mathf.Lerp(currentSpeed, targetSpeed, smoothSpeed);
        currentSpeed = Mathf.Clamp(currentSpeed, 0f, 1f);
        animator.SetFloat("Speed", currentSpeed);
    }

    // ----------------- Combat & State Triggers -----------------
    public void PlayAttack()
    {
        if (!canQueueNext) return;
        animator.SetTrigger("Attack" + attackComboStep);
        canQueueNext = false;

        attackComboStep++;
        if (attackComboStep > maxCombo) attackComboStep = 1;
    }

    public void EnableNextAttack() => canQueueNext = true;

    public void PlayHit() => animator.SetTrigger("Hit");
    public void PlayLand() => animator.SetTrigger("Land");
    public void PlayJump() => animator.SetTrigger("Jump");
    public void PlayParry() => animator.SetTrigger("Parry");

    public void SetGrounded(bool grounded) => animator.SetBool("IsGrounded", grounded);
    public void SetDashing(bool isDashing) => animator.SetBool("IsDashing", isDashing);
    public void SetFalling(bool isFalling) => animator.SetBool("IsFalling", isFalling);
    public void SetBlocking(bool blocking) => animator.SetBool("IsBlocking", blocking);

    public void SetSpeedMultiplier(float speed) => animator.speed = speed;
    public void ResetSpeed() => animator.speed = 1f;
}
