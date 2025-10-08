using UnityEngine;

public class AlwaysFaceCamera : MonoBehaviour
{
    private Camera mainCam;

    void Start()
    {
        mainCam = Camera.main;
    }

    void LateUpdate()
    {
        if (!mainCam) return;

        // Make the object face the camera directly
        transform.forward = mainCam.transform.forward;
    }
}
