using UnityEngine;
using System.Collections;

[RequireComponent(typeof(Rigidbody))]
public class PlayerController : MonoBehaviour
{
    [SerializeField] private float jumpAnticipationDelay = 0.2f;

    [Header("Movement")]
    public float moveSpeed = 5f;
    public float rotationSpeed = 10f;
    public float runMultiplier = 1.8f;

    [Header("Jump & Dash")]
    public float jumpForce = 7f;
    public float dashForce = 15f;
    public float dashDuration = 0.2f;
    private bool isDashing;
    private bool isJumping;
    private bool isFalling;
    private bool wasGrounded;

    [Header("Gravity")]
    public float fallMultiplier = 2.5f;
    public float lowJumpMultiplier = 2f;

    [Header("References")]
    public AttackController attackController;
    public PlayerStats playerStats;
    public PlayerFeedbacks feedbacks;
    public PlayerAnimationHandler animHandler;

    private Rigidbody rb;
    private Vector3 moveDirection;
    private bool isRunning;

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
    }

    private void FixedUpdate()
    {
        if (!isDashing)
        {
            float currentSpeed = isRunning ? moveSpeed * runMultiplier : moveSpeed;
            Vector3 velocity = new Vector3(moveDirection.x * currentSpeed, rb.linearVelocity.y, moveDirection.z * currentSpeed);
            rb.linearVelocity = velocity;
        }

        //ApplyBetterGravity();

        float horizontalSpeed = new Vector3(rb.linearVelocity.x, 0, rb.linearVelocity.z).magnitude;
        float normalizedSpeed = Mathf.InverseLerp(0, moveSpeed * runMultiplier, horizontalSpeed);
        animHandler?.UpdateMovement(normalizedSpeed);
    }

    private void HandleMovementInput()
    {
        float h = Input.GetAxisRaw("Horizontal");
        float v = Input.GetAxisRaw("Vertical");
        moveDirection = new Vector3(h, 0f, v).normalized;
        isRunning = Input.GetKey(KeyCode.LeftShift);

        if (moveDirection != Vector3.zero)
        {
            Quaternion targetRot = Quaternion.LookRotation(moveDirection);
            transform.rotation = Quaternion.Slerp(transform.rotation, targetRot, rotationSpeed * Time.deltaTime);
        }
    }

    private void HandleActions()
    {
        if (Input.GetKeyDown(KeyCode.Space) && IsGrounded())
            StartCoroutine(PerformJumpWithDelay()); // using anticipation delay now

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

        Vector3 dashDir = moveDirection != Vector3.zero ? moveDirection : transform.forward;
        float dashEndTime = Time.time + dashDuration;

        float originalDrag = rb.linearDamping;
        rb.linearDamping = 0f;
        rb.useGravity = false;

        feedbacks?.PlayDashFeedback();

        while (Time.time < dashEndTime)
        {
            rb.linearVelocity = dashDir * dashForce;
            yield return null;
        }

        rb.useGravity = true;
        rb.linearDamping = originalDrag;
        rb.linearVelocity = new Vector3(0, rb.linearVelocity.y, 0);

        isDashing = false;
        animHandler?.SetDashing(false);
    }

    private void ApplyBetterGravity()
    {
        if (rb.linearVelocity.y < 0)
            rb.linearVelocity += Vector3.up * Physics.gravity.y * (fallMultiplier - 1) * Time.fixedDeltaTime;
        else if (rb.linearVelocity.y > 0 && !Input.GetKey(KeyCode.Space))
            rb.linearVelocity += Vector3.up * Physics.gravity.y * (lowJumpMultiplier - 1) * Time.fixedDeltaTime;
    }

    private bool IsGrounded()
    {
        return Physics.Raycast(transform.position + Vector3.up * 0.1f, Vector3.down, 1.2f);
    }

    public void OnHit()
    {
        animHandler?.PlayHit();
    }
}
