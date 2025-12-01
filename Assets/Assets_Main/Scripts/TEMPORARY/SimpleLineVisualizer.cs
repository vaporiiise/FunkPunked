using UnityEngine;
using FMODUnity;

[RequireComponent(typeof(LineRenderer))]
public class SmoothWaveformVisualizer : MonoBehaviour
{
    [Header("Audio Settings")]
    public AudioSource spectrumSource;      // AudioSource with preview clip
    public EventReference fmodEvent;        // FMOD event for sound output

    [Header("Visualizer Settings")]
    public int numberOfPoints = 512;
    public float width = 10f;   // Horizontal length
    public float height = 5f;   // Vertical scale
    public float yOffset = 0f;  // Vertical offset

    private LineRenderer lineRenderer;
    private float[] spectrum;

    void Start()
    {
        lineRenderer = GetComponent<LineRenderer>();
        lineRenderer.positionCount = numberOfPoints;

        spectrum = new float[numberOfPoints];

        // Play FMOD event for actual sound
        RuntimeManager.PlayOneShot(fmodEvent);

        // Play AudioSource for spectrum analysis
        if (spectrumSource != null)
            spectrumSource.Play();
    }

    void Update()
    {
        if (spectrumSource == null) return;

        // Get frequency spectrum
        spectrumSource.GetSpectrumData(spectrum, 0, FFTWindow.Hamming);

        for (int i = 0; i < numberOfPoints; i++)
        {
            float x = (i / (float)numberOfPoints) * width;
            // Smooth the waveform by taking sqrt of spectrum to exaggerate peaks
            float y = Mathf.Sqrt(spectrum[i]) * height + yOffset;
            lineRenderer.SetPosition(i, new Vector3(x, y, 0));
        }
    }
}