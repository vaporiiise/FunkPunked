using UnityEngine;

public class CameraFollow : MonoBehaviour
{
    [Header("Target")]
    public Transform target;

    [Header("Settings")]
    public Vector3 offset = new Vector3(0, 5, -6);
    public float smoothTime = 0.15f; // lower = snappier, higher = smoother
    public float rotationSpeed = 5f;

    [Header("Look Settings")]
    public float lookYOffset = 2f;

    private Vector3 velocity = Vector3.zero;

    private void LateUpdate()
    {
        if (target == null) return;

        // --- SMOOTH POSITION ---
        Vector3 desiredPosition = target.position + offset;
        transform.position = Vector3.SmoothDamp(transform.position, desiredPosition, ref velocity, smoothTime);

        // --- SMOOTH ROTATION ---
        Vector3 lookPoint = target.position + new Vector3(0, lookYOffset, 0);
        Quaternion targetRotation = Quaternion.LookRotation(lookPoint - transform.position, Vector3.up);
        transform.rotation = Quaternion.Slerp(transform.rotation, targetRotation, rotationSpeed * Time.deltaTime);
    }
}