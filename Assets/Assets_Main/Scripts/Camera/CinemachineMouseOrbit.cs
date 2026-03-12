using UnityEngine;
using Unity.Cinemachine;

public class CinemachineGenshinCam : MonoBehaviour
{
    [Header("Components")]
    private CinemachineCamera _vcam;
    private CinemachineOrbitalFollow _orbit;

    [Header("Sensitivity")]
    public float sensitivityX = 0.5f;
    public float sensitivityY = 0.5f;

    [Header("Pitch Limits")]
    public float minPitch = -20f;
    public float maxPitch = 70f;

    private float _xRotation;
    private float _yRotation;

    void Awake()
    {
        _vcam = GetComponent<CinemachineCamera>();
        _orbit = GetComponent<CinemachineOrbitalFollow>();
        
        // Ensure the cursor is gone
        Cursor.lockState = CursorLockMode.Locked;
        Cursor.visible = false;

        // Sync initial values
        if (_orbit != null)
        {
            _xRotation = _orbit.HorizontalAxis.Value;
            _yRotation = _orbit.VerticalAxis.Value;
        }
    }

    void LateUpdate() // Use LateUpdate for Cameras to prevent jitter
    {
        if (_orbit == null || Time.timeScale == 0) return;

        // 1. Get Mouse Input
        float mouseX = Input.GetAxis("Mouse X") * sensitivityX;
        float mouseY = Input.GetAxis("Mouse Y") * sensitivityY;

        // 2. Calculate New Values
        _xRotation += mouseX;
        _yRotation -= mouseY; // Invert Y for natural feel

        // 3. Clamp the Vertical (Pitch) axis
        _yRotation = Mathf.Clamp(_yRotation, minPitch, maxPitch);

        // 4. Force the Orbital Follow component to these values
        _orbit.HorizontalAxis.Value = _xRotation;
        _orbit.VerticalAxis.Value = _yRotation;
    }
}