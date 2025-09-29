using UnityEngine;
using UnityEngine.UI;

public class BeatVisualizer : MonoBehaviour
{
    [Header("Beat Settings")]
    public RectTransform spawnPoint;   // Where circles spawn (e.g. left side)
    public RectTransform hitZone;      // Where circles should line up
    public GameObject beatCirclePrefab;
    public float travelTime = 1f;      // Seconds it takes to move to hit zone

    private void OnEnable()
    {
        BeatManager.OnBeat += SpawnBeatCircle;
    }

    private void OnDisable()
    {
        BeatManager.OnBeat -= SpawnBeatCircle;
    }

    private void SpawnBeatCircle(int beatIndex)
    {
        GameObject circle = Instantiate(beatCirclePrefab, spawnPoint.position, Quaternion.identity, transform);
        RectTransform circleRT = circle.GetComponent<RectTransform>();

        // Animate movement
        BeatCircle mover = circle.AddComponent<BeatCircle>();
        mover.Init(circleRT, spawnPoint.position, hitZone.position, travelTime);
    }
}