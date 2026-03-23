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
        if (vCam != null)
        {
            var inputProvider = GetComponent<CinemachineInputProvider>();
            if (inputProvider != null) inputProvider.enabled = false;
        }
    }
}