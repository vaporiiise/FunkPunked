using UnityEngine;

/// <summary>
/// Main controller for player movement, jumping, dashing, and third-person camera.
/// </summary>
namespace AfterimageFX
{
    public class PlayerController : MonoBehaviour
    {
        [Header("Movement Settings")]
        [Tooltip("Walk speed while moving normally.")]
        public float walkSpeed = 5f;

        [Tooltip("Sprint speed when holding shift.")]
        public float sprintSpeed = 8f;

        [Tooltip("Speed during dash.")]
        public float dashSpeed = 20f;

        [Tooltip("Duration of dash in seconds.")]
        public float dashTime = 0.2f;

        [Tooltip("Jump height in units.")]
        public float jumpHeight = 1.5f;

        [Tooltip("Downward gravity applied to the player.")]
        public float gravity = -9.81f;

        [Header("Camera Settings")]
        [Tooltip("Transform of the camera (e.g., Main Camera).")]
        public Transform cameraTransform;

        [Tooltip("Mouse sensitivity for rotation.")]
        public float mouseSensitivity = 2f;

        [Tooltip("Vertical camera rotation limit (up/down).")]
        public float cameraPitchLimit = 80f;

        [Tooltip("Offset of the camera from the player.")]
        public Vector3 cameraOffset = new Vector3(0, 3, -6);

        [Header("References")]
        [Tooltip("CharacterController component on the player.")]
        public CharacterController controller;

        [Tooltip("Animator component for controlling animations.")]
        public Animator animator;

        private Vector3 velocity;
        private bool isGrounded;
        private bool isDashing = false;
        private float xRotation = 0f;

        void Start()
        {
            // Lock cursor to center of screen
            Cursor.lockState = CursorLockMode.Locked;
            Cursor.visible = false;

            // Get components if not assigned in Inspector
            if (controller == null) controller = GetComponent<CharacterController>();
            if (animator == null) animator = GetComponent<Animator>();

            // Slightly raise player to avoid ground clipping
            transform.position += Vector3.up * 1.5f;
        }

        void Update()
        {
            HandleMovement();
            HandleJump();
            HandleDash();
            HandleCamera();
            UpdateAnimations();
        }

        /// <summary>
        /// Handles basic walking/sprinting movement.
        /// </summary>
        void HandleMovement()
        {
            isGrounded = controller.isGrounded;
            if (isGrounded && velocity.y < 0)
                velocity.y = -2f; // Keeps player grounded

            float moveX = Input.GetAxis("Horizontal");
            float moveZ = Input.GetAxis("Vertical");

            Vector3 move = transform.right * moveX + transform.forward * moveZ;
            float currentSpeed = Input.GetKey(KeyCode.LeftShift) ? sprintSpeed : walkSpeed;

            controller.Move(move * currentSpeed * Time.deltaTime);
        }

        /// <summary>
        /// Handles jumping and applies gravity.
        /// </summary>
        void HandleJump()
        {
            if (Input.GetKeyDown(KeyCode.Space) && isGrounded)
            {
                velocity.y = Mathf.Sqrt(jumpHeight * -2f * gravity);
                animator.SetTrigger("Jump");
            }

            velocity.y += gravity * Time.deltaTime;
            controller.Move(velocity * Time.deltaTime);
        }

        /// <summary>
        /// Handles dash input and starts dash coroutine.
        /// </summary>
        void HandleDash()
        {
            if (Input.GetKeyDown(KeyCode.R) && !isDashing)
            {
                StartCoroutine(DashCoroutine());
            }
        }

        /// <summary>
        /// Dash movement coroutine that temporarily boosts speed.
        /// </summary>
        System.Collections.IEnumerator DashCoroutine()
        {
            isDashing = true;

            // Play dash animation instantly
            animator.Play("Dash", 0, 0f);
            animator.SetBool("isDashing", true);

            float startTime = Time.time;
            Vector3 dashDirection = transform.forward;

            // Dash loop
            while (Time.time < startTime + dashTime)
            {
                controller.Move(dashDirection * dashSpeed * Time.deltaTime);
                yield return null;
            }

            isDashing = false;
            animator.SetBool("isDashing", false);

            // Refresh movement animation states after dash
            bool isMoving = Input.GetAxisRaw("Horizontal") != 0 || Input.GetAxisRaw("Vertical") != 0;
            bool isRunning = isMoving && Input.GetKey(KeyCode.LeftShift);

            animator.SetBool("isWalking", isMoving);
            animator.SetBool("isRunning", isRunning);
        }

        /// <summary>
        /// Handles mouse input and positions/rotates the camera.
        /// </summary>
        void HandleCamera()
        {
            float mouseX = Input.GetAxis("Mouse X") * mouseSensitivity;
            float mouseY = Input.GetAxis("Mouse Y") * mouseSensitivity;

            xRotation -= mouseY;
            xRotation = Mathf.Clamp(xRotation, -cameraPitchLimit, cameraPitchLimit);

            // Rotate camera and player
            cameraTransform.localRotation = Quaternion.Euler(xRotation, 0f, 0f);
            transform.Rotate(Vector3.up * mouseX);

            // Smoothly position camera
            Vector3 targetPosition = transform.position + transform.rotation * cameraOffset;
            cameraTransform.position = Vector3.Lerp(cameraTransform.position, targetPosition, 10f * Time.deltaTime);

            // Make camera look at the player
            cameraTransform.LookAt(transform.position + Vector3.up * 1.5f);
        }

        /// <summary>
        /// Updates animation parameters based on player state.
        /// </summary>
        void UpdateAnimations()
        {
            if (animator == null)
            {
                Debug.LogError("Animator is not assigned to PlayerController! Check the Inspector.");
                return;
            }

            bool isMoving = Input.GetAxisRaw("Horizontal") != 0 || Input.GetAxisRaw("Vertical") != 0;
            bool isRunning = isMoving && Input.GetKey(KeyCode.LeftShift);

            animator.SetBool("isWalking", isMoving);
            animator.SetBool("isRunning", isRunning);
        }
    }
}