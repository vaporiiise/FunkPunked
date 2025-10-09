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

        transform.forward = mainCam.transform.forward;
    }
}
