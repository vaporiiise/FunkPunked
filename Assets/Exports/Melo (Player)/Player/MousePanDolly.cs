using UnityEngine;
using Unity.Cinemachine;

public class MousePanSpline : MonoBehaviour
{
    [Header("Pan Settings")]
    [Tooltip("How much the camera pans. 0.5 is a wide pan, 0.2 is subtle.")]
    public float maxScreenShift = 0.4f; 
    public float smoothSpeed = 5f;

    private CinemachineCamera _cmCamera;
    private CinemachineRotationComposer _composer;
    private float _targetX;
    private float _currentX;

    void Awake()
    {
        _cmCamera = GetComponent<CinemachineCamera>();
        // Access the Rotation Composer component shown in your screenshot
        _composer = _cmCamera.GetComponent<CinemachineRotationComposer>();
    }

    void Update()
    {
        // 1. Get Mouse X (-1 to 1)
        float normalizedMouseX = (Input.mousePosition.x / Screen.width) * 2f - 1f;

        // 2. Set target. In Cinemachine, Screen X:
        // -0.5 is right side, 0.5 is left side (it shifts the framing)
        // We invert it so mouse left = pan left
        _targetX = -normalizedMouseX * maxScreenShift;

        // 3. Smooth the transition
        _currentX = Mathf.Lerp(_currentX, _targetX, Time.deltaTime * smoothSpeed);

        // 4. Apply to the Composer's Screen Position
        if (_composer != null)
        {
            _composer.Composition.ScreenPosition.x = _currentX;
        }
    }
}