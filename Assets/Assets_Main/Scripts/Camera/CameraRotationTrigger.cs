using UnityEngine;

public class CameraRotationTrigger : MonoBehaviour
{
    public float targetYaw = 0f;
    public float targetPitch = 0f;
    public float rotationSpeed = 2f;
    public bool rotateBackOnExit = true;

    private CameraRotationController camController;

    void Start()
    {
        camController = FindObjectOfType<CameraRotationController>();
    }

    void OnTriggerEnter(Collider other)
    {
        if (other.CompareTag("Player"))
            camController.SetTargetRotation(targetYaw, targetPitch, rotationSpeed);
    }

    void OnTriggerExit(Collider other)
    {
        if (other.CompareTag("Player") && rotateBackOnExit)
            camController.ResetRotation(rotationSpeed);
    }
}