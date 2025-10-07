using UnityEngine;

public class CameraFollow : MonoBehaviour
{
    [Header("Target")]
    public Transform target;

    [Header("Settings")]
    public Vector3 offset = new Vector3(0, 5, -6);
    public float followSpeed = 5f;
    public float rotationSpeed = 5f;

    [Header("Look Settings")]
    public float lookYOffset = 2f;

    private void LateUpdate()
    {
        if (target == null) return;

        // Smooth position follow
        Vector3 desiredPosition = target.position + offset;
        transform.position = Vector3.Lerp(transform.position, desiredPosition, followSpeed * Time.deltaTime);

        // Calculate desired rotation
        Vector3 lookPoint = target.position + new Vector3(0, lookYOffset, 0);
        Vector3 direction = (lookPoint - transform.position).normalized;
        Quaternion targetRotation = Quaternion.LookRotation(direction, Vector3.up);

        // Smooth rotation
        transform.rotation = Quaternion.Slerp(transform.rotation, targetRotation, rotationSpeed * Time.deltaTime);
    }
}