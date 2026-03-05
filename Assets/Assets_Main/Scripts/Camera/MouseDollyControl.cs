using UnityEngine;
using Unity.Cinemachine;
using Unity.Mathematics;
using UnityEngine.Splines;

public class MouseDollyControl : MonoBehaviour
{
    [Header("Required Components")]
    // Drag the Cinemachine Camera here
    public CinemachineCamera vcam; 
    // Drag the "Cinemachine Spline Dolly" component (from the Vcam's Position Control) here
    public CinemachineSplineDolly dollyComponent;
    // Drag your Spline object here
    public SplineContainer splineContainer; 
    public Transform playerTransform; 

    [Header("Sensitivity Settings")]
    public float dollySensitivity = 0.05f;
    public float heightSensitivity = 0.05f;
    public float idleTimeBeforeReset = 3.0f;
    public float resetSpeed = 1.0f;

    private float _idleTimer;
    private float _currentYOffset = 0f;

    void Update()
    {
        if (dollyComponent == null) return;

        float mouseX = Input.GetAxis("Mouse X");
        float mouseY = Input.GetAxis("Mouse Y");

        // 1. Detect Input
        if (Mathf.Abs(mouseX) > 0.01f || Mathf.Abs(mouseY) > 0.01f)
        {
            _idleTimer = 0;
            
            // X Movement: Change Camera Position (along spline)
            dollyComponent.CameraPosition += mouseX * dollySensitivity;
            
            // Y Movement: Internal height tracker
            _currentYOffset += mouseY * heightSensitivity;
        }
        else
        {
            // 2. Handle Auto-Reset
            _idleTimer += Time.deltaTime;
            if (_idleTimer >= idleTimeBeforeReset)
            {
                ReturnToDefault();
            }
        }

        // 3. Apply Y-Offset to the Camera's local transform
        // This offsets the camera relative to its path position
        transform.localPosition = new Vector3(0, _currentYOffset, 0);
    }

    void ReturnToDefault()
    {
        if (splineContainer == null || playerTransform == null) return;

        // Find closest point (t) on spline for the player
        float3 nearestPoint;
        float t;
        SplineUtility.GetNearestPoint(splineContainer.Spline, (float3)playerTransform.position, out nearestPoint, out t);

        // Smoothly return dolly position and height offset
        dollyComponent.CameraPosition = Mathf.Lerp(dollyComponent.CameraPosition, t, Time.deltaTime * resetSpeed);
        _currentYOffset = Mathf.Lerp(_currentYOffset, 0f, Time.deltaTime * resetSpeed);
    }
}