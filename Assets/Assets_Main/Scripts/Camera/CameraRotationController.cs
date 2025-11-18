using UnityEngine;
using Unity.Cinemachine;

public class CameraRotationController : MonoBehaviour
{
    private CinemachineVirtualCamera vcam;
    private CinemachinePOV pov;

    private float targetYaw;
    private float targetPitch;
    private float rotationSpeed = 2f;
    private bool rotating = false;

    private float defaultYaw;
    private float defaultPitch;

    void Awake()
    {
        vcam = GetComponent<CinemachineVirtualCamera>();
        pov = vcam.GetCinemachineComponent<CinemachinePOV>();

        defaultYaw = pov.m_HorizontalAxis.Value;
        defaultPitch = pov.m_VerticalAxis.Value;

        targetYaw = defaultYaw;
        targetPitch = defaultPitch;
    }

    void Update()
    {
        if (!rotating) return;

        pov.m_HorizontalAxis.Value = Mathf.Lerp(pov.m_HorizontalAxis.Value, targetYaw, Time.deltaTime * rotationSpeed);
        pov.m_VerticalAxis.Value = Mathf.Lerp(pov.m_VerticalAxis.Value, targetPitch, Time.deltaTime * rotationSpeed);

        if (Mathf.Abs(pov.m_HorizontalAxis.Value - targetYaw) < 0.01f &&
            Mathf.Abs(pov.m_VerticalAxis.Value - targetPitch) < 0.01f)
        {
            rotating = false;
        }
    }

    public void SetTargetRotation(float yaw, float pitch, float speed)
    {
        targetYaw = yaw;
        targetPitch = pitch;
        rotationSpeed = speed;
        rotating = true;
    }

    public void ResetRotation(float speed)
    {
        targetYaw = defaultYaw;
        targetPitch = defaultPitch;
        rotationSpeed = speed;
        rotating = true;
    }
}