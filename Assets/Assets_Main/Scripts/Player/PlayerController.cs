using UnityEngine;
using System.Collections;

[RequireComponent(typeof(Rigidbody))]
public class PlayerController : MonoBehaviour
{
    [Header("Movement")]
    public float moveSpeed = 5f;
    public float runMultiplier = 1.8f;
    public float rotationSpeed = 10f;

    [Header("Jump & Dash")]
    public float jumpForce = 7f;
    public float dashForce = 15f;
    public float dashDuration = 0.2f;
    public float jumpAnticipationDelay = 0.2f;

    [Header("References")]
    public PlayerAnimationHandler animHandler;
    public AttackController attackController; // For WeaponHolstered info
    public PlayerFeedbacks feedbacks;

    private Rigidbody rb;
    private Vector3 moveDirection;
    private bool isRunning;
    private bool isDashing;
    private bool isJumping;
    private bool isFalling;
    private bool wasGrounded;

    private bool movementLocked => attackController != null && attackController.IsAttacking;

    private void Start()
    {
        rb = GetComponent<Rigidbody>();
        rb.freezeRotation = true;
        wasGrounded = IsGrounded();
    }

    private void Update()
    {
        HandleMovementInput();
        HandleActions();
        HandleAirState();

        animHandler?.SetGrounded(IsGrounded());
        animHandler?.SetDashing(isDashing);

        // ----------------------------
        // Calculate animation speed threshold
        // ----------------------------
        float planarSpeed = new Vector3(moveDirection.x, 0, moveDirection.z).magnitude;
        float targetSpeed;

        if (planarSpeed < 0.1f)
        {
            targetSpeed = 0f; // Idle
        }
        else
        {
            if (isRunning) // Shift pressed
            {
                if (attackController != null && !attackController.WeaponHolstered)
                    targetSpeed = 0.73f; // RunWithWeapon
                else
                    targetSpeed = 0.5f;  // Run
            }
            else
            {
                targetSpeed = 0.3f; // Walk
            }
        }

        targetSpeed = Mathf.Clamp(targetSpeed, 0f, 1f);
        bool hasWeapon = attackController != null && !attackController.WeaponHolstered;

        animHandler?.UpdateMovement(targetSpeed, hasWeapon);
    }

    private void FixedUpdate()
    {
        if (isDashing || movementLocked) return;

        float currentSpeedValue = isRunning ? moveSpeed * runMultiplier : moveSpeed;
        Vector3 velocity = new Vector3(moveDirection.x * currentSpeedValue, rb.linearVelocity.y, moveDirection.z * currentSpeedValue);
        rb.linearVelocity = velocity;

        ApplyBetterGravity();
    }

    private void HandleMovementInput()
    {
        if (movementLocked)
        {
            moveDirection = Vector3.zero;
            return;
        }

        float v = Input.GetAxisRaw("Vertical");
        float h = Input.GetAxisRaw("Horizontal");

        Transform cam = Camera.main.transform;
        Vector3 camForward = Vector3.ProjectOnPlane(cam.forward, Vector3.up).normalized;
        Vector3 camRight = Vector3.ProjectOnPlane(cam.right, Vector3.up).normalized;

        moveDirection = (camForward * v + camRight * h).normalized;
        isRunning = Input.GetKey(KeyCode.LeftShift);

        if (moveDirection.sqrMagnitude > 0.01f)
        {
            Quaternion targetRot = Quaternion.LookRotation(moveDirection, Vector3.up);
            transform.rotation = Quaternion.Slerp(transform.rotation, targetRot, rotationSpeed * Time.deltaTime);
        }
    }

    private void HandleActions()
    {
        if (movementLocked) return;

        if (Input.GetKeyDown(KeyCode.Space) && IsGrounded())
            StartCoroutine(PerformJumpWithDelay());

        if (Input.GetKeyDown(KeyCode.LeftControl) && !isDashing)
            StartCoroutine(Dash());
    }

    private IEnumerator PerformJumpWithDelay()
    {
        animHandler?.PlayJump();
        yield return new WaitForSeconds(jumpAnticipationDelay);

        rb.linearVelocity = new Vector3(rb.linearVelocity.x, 0f, rb.linearVelocity.z);
        rb.AddForce(Vector3.up * jumpForce, ForceMode.Impulse);
        isJumping = true;
        feedbacks?.PlayJumpFeedback();
    }

    private void HandleAirState()
    {
        bool grounded = IsGrounded();
        if (!grounded && rb.linearVelocity.y < -0.1f && !isFalling)
        {
            isFalling = true;
            animHandler?.SetFalling(true);
        }

        if (!wasGrounded && grounded)
        {
            isFalling = false;
            isJumping = false;
            animHandler?.SetFalling(false);
            animHandler?.PlayLand();
        }

        wasGrounded = grounded;
    }

    private IEnumerator Dash()
    {
        isDashing = true;
        animHandler?.SetDashing(true);

        Vector3 dashDir = moveDirection != Vector3.zero ? moveDirection.normalized : transform.forward;
        float dashEndTime = Time.time + dashDuration;

        float originalDrag = rb.linearDamping;
        rb.linearDamping = 0f;
        rb.useGravity = false;

        feedbacks?.PlayDashFeedback();
        rb.linearVelocity = dashDir * dashForce;

        while (Time.time < dashEndTime)
        {
            rb.linearVelocity = Vector3.Lerp(rb.linearVelocity, dashDir * dashForce, 0.5f);
            yield return new WaitForFixedUpdate();
        }

        rb.useGravity = true;
        rb.linearDamping = originalDrag;
        rb.linearVelocity = new Vector3(dashDir.x * (dashForce * 0.2f), rb.linearVelocity.y, dashDir.z * (dashForce * 0.2f));

        isDashing = false;
        animHandler?.SetDashing(false);
    }

    private void ApplyBetterGravity()
    {
        if (rb.linearVelocity.y < 0)
            rb.linearVelocity += Vector3.up * Physics.gravity.y * (2.5f - 1) * Time.fixedDeltaTime;
        else if (rb.linearVelocity.y > 0 && !Input.GetKey(KeyCode.Space))
            rb.linearVelocity += Vector3.up * Physics.gravity.y * (2f - 1) * Time.fixedDeltaTime;
    }

    private bool IsGrounded() => Physics.Raycast(transform.position + Vector3.up * 0.1f, Vector3.down, 1.2f);

    public void OnHit() => animHandler?.PlayHit();
}
