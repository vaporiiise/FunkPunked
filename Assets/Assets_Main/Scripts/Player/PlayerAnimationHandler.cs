using UnityEngine;

[RequireComponent(typeof(Animator))]
public class PlayerAnimationHandler : MonoBehaviour
{
    public Animator animator { get; private set; }

    [Header("Combo Settings")]
    public int maxCombo = 6;
    private int lastAttackIndex = -1;
    [HideInInspector] public bool canQueueNext = true;

    private void Awake()
    {
        animator = GetComponent<Animator>();
    }

    // ---------------- MOVEMENT ----------------
    private float currentSpeed = 0f;
    public float smoothSpeed = 0.15f;

    public void UpdateMovement(float targetSpeed, bool hasWeapon)
    {
        currentSpeed = Mathf.Lerp(currentSpeed, targetSpeed, smoothSpeed);
        currentSpeed = Mathf.Clamp(currentSpeed, 0f, 1f);
        animator.SetFloat("Speed", currentSpeed);
    }

    // ---------------- ATTACK ----------------
    public void PlayAttack()
    {
        if (!canQueueNext) return;
        canQueueNext = false;

        int chosenIndex = GetRandomAttackIndex();

        // trigger animation
        animator.SetTrigger("Attack" + chosenIndex);

        lastAttackIndex = chosenIndex;
    }

    private int GetRandomAttackIndex()
    {
        int randomIndex = Random.Range(1, maxCombo + 1);

        // Make sure we don't repeat the last attack
        while (randomIndex == lastAttackIndex)
        {
            randomIndex = Random.Range(1, maxCombo + 1);
        }

        return randomIndex;
    }

    public void EnableNextAttack() => canQueueNext = true;

    // ---------------- OTHER TRIGGERS ----------------
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
    
    public void SetMagnet(bool value)
    {
        animator.SetBool("IsMagnet", value);
    }
    public void PlayKnockback()
    {
        animator.SetTrigger("Knockback");
    }
}
