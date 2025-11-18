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

    [Header("Dash Effects")]
    public GameObject dashSprite;
    public TrailRenderer[] dashTrails;

    [Header("Gravity")]
    public float fallMultiplier = 2.5f;
    public float lowJumpMultiplier = 2f;

    [Header("References")]
    public AttackController attackController;
    public PlayerStats playerStats;
    public PlayerFeedbacks feedbacks;
    public PlayerAnimationHandler animHandler;

    [Header("Route")]
    public Transform[] routePoints;        // waypoints along the route
    public float routeFollowSpeed = 3f;    // horizontal speed along the route
    private int closestIndex = 0;

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

        ApplyBetterGravity();

        float horizontalSpeed = new Vector3(rb.linearVelocity.x, 0, rb.linearVelocity.z).magnitude;
        float normalizedSpeed = Mathf.InverseLerp(0, moveSpeed * runMultiplier, horizontalSpeed) * 0.5f;
        if (normalizedSpeed < 0.05f) normalizedSpeed = 0f;

        animHandler?.UpdateMovement(normalizedSpeed);
    }

    private void HandleMovementInput()
    {
        float v = Input.GetAxisRaw("Vertical");
        float h = 0f;

        // Horizontal input along route
        if (routePoints.Length > 1)
        {
            closestIndex = FindClosestPointIndex();
            Vector3 routeDir = (routePoints[Mathf.Min(closestIndex + 1, routePoints.Length - 1)].position -
                                routePoints[closestIndex].position).normalized;

            if (Input.GetKey(KeyCode.D))
                h = 1f;
            else if (Input.GetKey(KeyCode.A))
                h = -1f;

            // Combine route horizontal with free vertical
            Vector3 camForward = Vector3.ProjectOnPlane(Camera.main.transform.forward, Vector3.up).normalized;
            moveDirection = (routeDir * h + camForward * v).normalized;
        }
        else
        {
            // Default free movement if no route
            float rawH = Input.GetAxisRaw("Horizontal");
            Transform cam = Camera.main.transform;
            Vector3 camForward = Vector3.ProjectOnPlane(cam.forward, Vector3.up).normalized;
            Vector3 camRight = Vector3.ProjectOnPlane(cam.right, Vector3.up).normalized;
            moveDirection = (camForward * v + camRight * rawH).normalized;
        }

        isRunning = Input.GetKey(KeyCode.LeftShift);

        // Rotate player toward movement
        if (moveDirection.sqrMagnitude > 0.01f)
        {
            Quaternion targetRot = Quaternion.LookRotation(moveDirection, Vector3.up);
            transform.rotation = Quaternion.Slerp(transform.rotation, targetRot, rotationSpeed * Time.deltaTime);
        }
    }

    private void HandleActions()
    {
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

        if (dashSprite != null) dashSprite.SetActive(true);

        if (dashTrails != null)
        {
            foreach (TrailRenderer trail in dashTrails)
            {
                if (trail == null) continue;
                trail.emitting = true;
                trail.Clear();
            }
        }

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

        if (dashSprite != null) dashSprite.SetActive(false);
        if (dashTrails != null)
        {
            foreach (TrailRenderer trail in dashTrails)
            {
                if (trail == null) continue;
                trail.emitting = false; 
            }
        }

        isDashing = false;
        animHandler?.SetDashing(false);
    }

    private void ApplyBetterGravity()
    {
        if (rb.linearVelocity.y < 0)
        {
            rb.linearVelocity += Vector3.up * Physics.gravity.y * (fallMultiplier - 1) * Time.fixedDeltaTime;
        }
        else if (rb.linearVelocity.y > 0 && !Input.GetKey(KeyCode.Space))
        {
            rb.linearVelocity += Vector3.up * Physics.gravity.y * (lowJumpMultiplier - 1) * Time.fixedDeltaTime;
        }
    }

    private bool IsGrounded()
    {
        return Physics.Raycast(transform.position + Vector3.up * 0.1f, Vector3.down, 1.2f);
    }

    private int FindClosestPointIndex()
    {
        int index = 0;
        float minDist = float.MaxValue;
        for (int i = 0; i < routePoints.Length; i++)
        {
            float dist = Vector3.Distance(transform.position, routePoints[i].position);
            if (dist < minDist)
            {
                minDist = dist;
                index = i;
            }
        }
        return index;
    }

    public void OnHit()
    {
        animHandler?.PlayHit();
    }
}
