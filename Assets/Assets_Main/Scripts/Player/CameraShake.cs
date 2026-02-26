using UnityEngine;
using Unity.Cinemachine; // Use 'Cinemachine' if Unity.Cinemachine throws an error

public class CameraShake : MonoBehaviour
{
    public static CameraShake Instance { get; private set; }
    
    // This is the component that handles "Shake" or "Wobble"
    private CinemachineBasicMultiChannelPerlin _noiseComponent;
    private float _shakeTimer;

    void Awake()
    {
        Instance = this;
        
        // Find the Virtual Camera component on THIS object
        var vcam = GetComponent<CinemachineVirtualCamera>();
        
        if (vcam != null)
        {
            // This gets the Noise/Wobble/Shake module regardless of the label
            _noiseComponent = vcam.GetCinemachineComponent<CinemachineBasicMultiChannelPerlin>();
        }
    }

    public void Shake(float intensity, float time)
    {
        if (_noiseComponent == null)
        {
            Debug.LogWarning("No Noise/Shake component found on " + gameObject.name);
            return;
        }

        // Amplitude is the 'Strength' of the wobble/shake
        _noiseComponent.AmplitudeGain = intensity;
        _shakeTimer = time;
    }

    void Update()
    {
        if (_shakeTimer > 0)
        {
            _shakeTimer -= Time.deltaTime;
            if (_shakeTimer <= 0f)
            {
                // Stop the wobble
                _noiseComponent.AmplitudeGain = 0f;
            }
        }
    }
}