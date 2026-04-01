using UnityEngine;

/// <summary>
/// A basic third-person movement and camera controller using CharacterController.
/// </summary>
namespace AfterimageFX
{
    [RequireComponent(typeof(CharacterController))]
    public class SimpleMovementController : MonoBehaviour
    {
        [Header("Movement Settings")]
        [Tooltip("Walking speed when not sprinting.")]
        public float walkSpeed = 5f;

        [Tooltip("Speed when holding sprint key.")]
        public float sprintSpeed = 8f;

        [Tooltip("Gravity force applied to the character.")]
        public float gravity = -15f;

        [Header("Camera Settings")]
        [Tooltip("Reference to the camera transform (e.g., Main Camera).")]
        public Transform cameraTransform;

        [Tooltip("Mouse sensitivity for camera rotation.")]
        public float cameraSensitivity = 2f;

        [Tooltip("Distance of the camera behind the character.")]
        public float cameraDistance = 3f;

        [Tooltip("Height offset of the camera.")]
        public float cameraHeight = 1.5f;

        [Tooltip("Vertical look limit for the camera pitch.")]
        public float cameraPitchLimit = 80f;

        private CharacterController controller;
        private Vector3 velocity;
        private float currentSpeed;
        private float pitch = 0f;

        void Start()
        {
            controller = GetComponent<CharacterController>();

            // Lock the cursor to the center of the screen
            Cursor.lockState = CursorLockMode.Locked;
            Cursor.visible = false;

            // 👇 Snap the character to the ground on start
            SnapToGround();
        }

        void Update()
        {
            HandleCameraRotation();
            HandleMovement();
            ApplyGravity();
            UpdateCameraPosition();
        }

        /// <summary>
        /// Rotates the character and camera based on mouse movement.
        /// </summary>
        void HandleCameraRotation()
        {
            float mouseX = Input.GetAxis("Mouse X") * cameraSensitivity;
            float mouseY = Input.GetAxis("Mouse Y") * cameraSensitivity;

            // Horizontal rotation (yaw)
            transform.Rotate(Vector3.up * mouseX);

            // Vertical rotation (pitch)
            pitch -= mouseY;
            pitch = Mathf.Clamp(pitch, -cameraPitchLimit, cameraPitchLimit);
        }

        /// <summary>
        /// Updates the camera's position based on the character's position and pitch.
        /// </summary>
        void UpdateCameraPosition()
        {
            Vector3 cameraOffset = new Vector3(0, cameraHeight, -cameraDistance);
            Quaternion camRotation = Quaternion.Euler(pitch, transform.eulerAngles.y, 0);

            cameraTransform.position = transform.position + camRotation * cameraOffset;
            cameraTransform.LookAt(transform.position + Vector3.up * cameraHeight);
        }

        /// <summary>
        /// Handles movement input and applies it to the character.
        /// </summary>
        void HandleMovement()
        {
            float x = Input.GetAxis("Horizontal");
            float z = Input.GetAxis("Vertical");

            Vector3 move = transform.right * x + transform.forward * z;
            currentSpeed = Input.GetKey(KeyCode.LeftShift) ? sprintSpeed : walkSpeed;

            controller.Move(move * currentSpeed * Time.deltaTime);
        }

        /// <summary>
        /// Applies gravity to the character controller.
        /// </summary>
        void ApplyGravity()
        {
            if (controller.isGrounded && velocity.y < 0)
            {
                velocity.y = -2f; // Prevents character from floating on ground contact
            }

            velocity.y += gravity * Time.deltaTime;
            controller.Move(velocity * Time.deltaTime);
        }

        /// <summary>
        /// Snaps the character to the ground if within a raycastable distance.
        /// </summary>
        void SnapToGround()
        {
            // Casts a ray downward to find the ground and adjusts position
            if (Physics.Raycast(transform.position + Vector3.up * 2f, Vector3.down, out RaycastHit hit, 5f))
            {
                transform.position = hit.point + Vector3.up * 0.1f;
            }
        }
    }
}