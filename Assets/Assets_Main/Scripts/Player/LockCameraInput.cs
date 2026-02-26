using UnityEngine;
using Unity.Cinemachine;

public class LockCameraInput : MonoBehaviour
{
    private CinemachineCamera vCam;

    void Awake()
    {
        vCam = GetComponent<CinemachineCamera>();
    }

    void LateUpdate()
    {
        // This forces the camera to stop listening to any Input Axis
        // ensuring WASD only moves the player, not the lens.
        if (vCam != null)
        {
            // Explicitly disabling input tracking on the camera object
            var inputProvider = GetComponent<CinemachineInputProvider>();
            if (inputProvider != null) inputProvider.enabled = false;
        }
    }
}