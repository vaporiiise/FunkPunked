using UnityEngine;

[RequireComponent(typeof(Animator))]
public class PlayerAnimationHandler : MonoBehaviour
{
    private Animator animator;
    private float currentSpeed = 0f;

    [Header("Settings")]
    public float smoothSpeed = 0.1f;
    public float idleDelay = 5f;

    private float idleTimer = 0f;
    private bool isIdle = false;
    private bool hasPlayedSpecialIdle = false;

    // Combo tracker
    private int attackComboStep = 1;
    private int maxCombo = 2; // Change to number of attack animations

    private void Awake()
    {
        animator = GetComponent<Animator>();
    }

    private void Update()
    {
        HandleSpecialIdle();
    }

    public void UpdateMovement(float normalizedSpeed)
    {
        currentSpeed = Mathf.Lerp(currentSpeed, normalizedSpeed, smoothSpeed);
        animator.SetFloat("Speed", currentSpeed);

        if (normalizedSpeed <= 0.01f)
        {
            if (!isIdle)
            {
                isIdle = true;
                idleTimer = 0f;
                hasPlayedSpecialIdle = false;
            }
        }
        else
        {
            isIdle = false;
            idleTimer = 0f;
            hasPlayedSpecialIdle = false;
        }
    }

    private void HandleSpecialIdle()
    {
        if (isIdle && !hasPlayedSpecialIdle)
        {
            idleTimer += Time.deltaTime;
            if (idleTimer >= idleDelay)
            {
                animator.SetTrigger("SpecialIdle");
                hasPlayedSpecialIdle = true;
            }
        }
    }

    public void SetGrounded(bool grounded) => animator.SetBool("IsGrounded", grounded);
    public void SetDashing(bool isDashing) => animator.SetBool("IsDashing", isDashing);
    public void SetFalling(bool isFalling) => animator.SetBool("IsFalling", isFalling);
    public void SetBlocking(bool blocking) => animator.SetBool("IsBlocking", blocking);

    public void PlayJump() => animator.SetTrigger("Jump");
    public void PlayLand() => animator.SetTrigger("Land");
    public void PlayHit() => animator.SetTrigger("Hit");

    // -----------------------------
    // COMBAT
    // -----------------------------
    public void PlayAttack()
    {
        animator.SetTrigger("Attack" + attackComboStep); // Trigger Attack1 or Attack2

        // Increment combo for next attack
        attackComboStep++;
        if (attackComboStep > maxCombo)
            attackComboStep = 1;
    }

    public void PlayParry() => animator.SetTrigger("Parry");

    public void SetSpeedMultiplier(float speed) => animator.speed = speed;
    public void ResetSpeed() => animator.speed = 1f;
}
