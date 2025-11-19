using UnityEngine;

[RequireComponent(typeof(LineRenderer))]
public class BeatFakeWaveform : MonoBehaviour
{
    [Header("Visualizer Settings")]
    public int numberOfPoints = 128;    // Number of points along the line
    public float width = 10f;           // Horizontal size
    public float height = 3f;           // Max vertical amplitude
    public float randomness = 0.5f;     // Random noise factor
    public float smoothing = 5f;        // How fast the wave decays

    private LineRenderer lineRenderer;
    private float[] pointY;
    private float[] targetY;

    void Start()
    {
        lineRenderer = GetComponent<LineRenderer>();
        lineRenderer.positionCount = numberOfPoints;

        pointY = new float[numberOfPoints];
        targetY = new float[numberOfPoints];

        // Subscribe to beat event
        BeatScheduler.OnBeat += OnBeat;
    }

    void OnDestroy()
    {
        BeatScheduler.OnBeat -= OnBeat;
    }

    void OnBeat(int beatCount)
    {
        // On each beat, generate a random target wave
        for (int i = 0; i < numberOfPoints; i++)
        {
            targetY[i] = Random.Range(-1f, 1f) * height;
        }
    }

    void Update()
    {
        float spacing = width / (numberOfPoints - 1);

        // Smoothly move points toward target values
        for (int i = 0; i < numberOfPoints; i++)
        {
            pointY[i] = Mathf.Lerp(pointY[i], targetY[i], Time.deltaTime * smoothing);

            // Optional: add small continuous noise for more natural movement
            float noise = (Mathf.PerlinNoise(Time.time * 0.5f, i * 0.1f) - 0.5f) * randomness;
            lineRenderer.SetPosition(i, new Vector3(i * spacing, pointY[i] + noise, 0));
        }
    }
}