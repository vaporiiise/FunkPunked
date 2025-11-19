using UnityEngine;

public class EnemyHealthBarLookAtCamera : MonoBehaviour
{
    public Camera mainCamera; // assign manually or use Camera.main

    void Start()
    {
        if (mainCamera == null)
            mainCamera = Camera.main;
    }

    void LateUpdate()
    {
        if (mainCamera == null) return;

        // Make the health bar look at the camera
        transform.LookAt(transform.position + mainCamera.transform.rotation * Vector3.forward,
            mainCamera.transform.rotation * Vector3.up);
    }
}