using UnityEngine;

public class FaceCamera : MonoBehaviour
{
    public Camera mainCamera; 

    void LateUpdate()
    {
        if (mainCamera != null)
        {
            transform.rotation = Quaternion.LookRotation(transform.position - mainCamera.transform.position);
        }
    }
}