using UnityEngine;

[RequireComponent(typeof(Rigidbody))]
public class PlayerController : MonoBehaviour
{
    [Header("Movement")]
    public float moveSpeed = 5f;
    public float rotationSpeed = 10f;
    public float runMultiplier = 1.8f;

    [Header("Jump & Dash")]
    public float jumpForce = 7f;
    public float dashForce = 15f;
    public float dashDuration = 0.2f;
    private bool isDashing = false;

    [Header("Custom Gravity")]
    public float fallMultiplier = 2.5f; // how fast you fall
    public float lowJumpMultiplier = 2f; // short hop if you release jump early

    [Header("References")]
    public AttackController attackController;

    private Rigidbody rb;
    private Vector3 moveDirection;
    private bool isRunning;

    private void Start()
    {
        rb = GetComponent<Rigidbody>();
        rb.freezeRotation = true;
    }

    private void Update()
    {
        float h = Input.GetAxisRaw("Horizontal");
        float v = Input.GetAxisRaw("Vertical");
        moveDirection = new Vector3(h, 0f, v).normalized;

        // Handle running
        isRunning = Input.GetKey(KeyCode.LeftShift);

        // Rotation
        if (moveDirection != Vector3.zero)
        {
            Quaternion targetRotation = Quaternion.LookRotation(moveDirection, Vector3.up);
            transform.rotation = Quaternion.Slerp(transform.rotation, targetRotation, rotationSpeed * Time.deltaTime);
        }

        // Attacks
        if (Input.GetKeyDown(KeyCode.Mouse0))
            attackController?.TryAttack();

        if (Input.GetKeyDown(KeyCode.Mouse1))
            attackController?.TryParry();

        // Jump
        if (Input.GetKeyDown(KeyCode.Space) && IsGrounded())
            Jump();

        // Dash
        if (Input.GetKeyDown(KeyCode.LeftControl) && !isDashing)
            StartCoroutine(Dash());
    }

    private void FixedUpdate()
    {
        if (!isDashing)
        {
            float currentSpeed = isRunning ? moveSpeed * runMultiplier : moveSpeed;
            rb.MovePosition(rb.position + moveDirection * currentSpeed * Time.fixedDeltaTime);
        }

        ApplyBetterGravity();
    }

    private void Jump()
    {
        rb.linearVelocity = new Vector3(rb.linearVelocity.x, 0f, rb.linearVelocity.z); // reset Y velocity
        rb.AddForce(Vector3.up * jumpForce, ForceMode.Impulse);
    }

    private void ApplyBetterGravity()
    {
        if (rb.linearVelocity.y < 0)
        {
            // Faster fall
            rb.linearVelocity += Vector3.up * Physics.gravity.y * (fallMultiplier - 1) * Time.fixedDeltaTime;
        }
        else if (rb.linearVelocity.y > 0 && !Input.GetKey(KeyCode.Space))
        {
            // Shorter jump when jump key is released
            rb.linearVelocity += Vector3.up * Physics.gravity.y * (lowJumpMultiplier - 1) * Time.fixedDeltaTime;
        }
    }

    private System.Collections.IEnumerator Dash()
    {
        isDashing = true;
        Vector3 dashDirection = moveDirection != Vector3.zero ? moveDirection : transform.forward;
        float startTime = Time.time;

        while (Time.time < startTime + dashDuration)
        {
            rb.MovePosition(rb.position + dashDirection * dashForce * Time.fixedDeltaTime);
            yield return null;
        }

        isDashing = false;
    }

    private bool IsGrounded()
    {
        return Physics.Raycast(transform.position, Vector3.down, 1.1f);
    }
}
