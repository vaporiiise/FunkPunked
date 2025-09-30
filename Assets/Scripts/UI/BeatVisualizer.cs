using UnityEngine;
using System.Collections.Generic;

public class BeatVisualizer : MonoBehaviour
{
    [Header("References")]
    public RectTransform hitWindow;   // UI window where beat should align
    public RectTransform spawnPoint;  // where circles start
    public RectTransform endPoint;    // where circles exit
    public GameObject beatCirclePrefab; // circle prefab

    [Header("Settings")]
    public int beatsAhead = 4; // how many beats we queue at once
    public float despawnAfter = 0.2f; // seconds after window to destroy

    private List<BeatCircle> activeCircles = new List<BeatCircle>();
    private Queue<int> beatQueue = new Queue<int>();

    private BeatManager beatManager;

    private void Start()
    {
        beatManager = FindObjectOfType<BeatManager>();

        // Subscribe to BeatManager beats
        BeatManager.OnBeat += HandleBeat;
    }

    private void OnDestroy()
    {
        BeatManager.OnBeat -= HandleBeat;
    }

    private void Update()
    {
        if (beatManager == null || beatManager.BeatInterval <= 0) return;

        double now = AudioSettings.dspTime;

        // Move active circles
        for (int i = activeCircles.Count - 1; i >= 0; i--)
        {
            BeatCircle circle = activeCircles[i];

            // Check if the object was already destroyed
            if (circle.rect == null)
            {
                activeCircles.RemoveAt(i);
                continue;
            }

            float progress = (float)((now - circle.spawnDSPTime) / circle.travelTime);
            circle.rect.anchoredPosition = Vector2.Lerp(
                spawnPoint.anchoredPosition,
                endPoint.anchoredPosition,
                progress
            );

            // Despawn after going past end
            if (progress >= 1f + (despawnAfter / (float)circle.travelTime))
            {
                Destroy(circle.rect.gameObject);
                activeCircles.RemoveAt(i);
            }
        }

        // Spawn queued beats ahead of time
        while (beatQueue.Count > 0 && beatQueue.Peek() <= beatManager.LastBeatDSPTime + (beatManager.BeatInterval * beatsAhead))
        {
            SpawnCircle(beatQueue.Dequeue());
        }
    }

    private void HandleBeat(int beatIndex)
    {
        // Calculate when the NEXT beats will land and queue them
        double beatTime = beatManager.LastBeatDSPTime;
        double interval = beatManager.BeatInterval;

        for (int i = 1; i <= beatsAhead; i++)
        {
            double futureTime = beatTime + interval * i;
            beatQueue.Enqueue((int)futureTime);
        }
    }

    private void SpawnCircle(int beatIndex)
    {
        GameObject obj = Instantiate(beatCirclePrefab, transform);
        RectTransform rect = obj.GetComponent<RectTransform>();

        BeatCircle circle = new BeatCircle
        {
            rect = rect,
            spawnDSPTime = AudioSettings.dspTime,
            travelTime = beatManager.BeatInterval * beatsAhead
        };

        rect.anchoredPosition = spawnPoint.anchoredPosition;
        activeCircles.Add(circle);
    }

    // Struct to track circle state
    private class BeatCircle
    {
        public RectTransform rect;
        public double spawnDSPTime;
        public double travelTime;
    }
}
