using UnityEngine;
using System;

public class BeatScheduler : MonoBehaviour
{
    [Header("BPM Settings")]
    public float bpm = 120f;

    private float beatInterval;
    private float nextBeatTime;
    private int beatCount;
    public float attackLeadTime = 0.1f;

    public static event Action<int> OnBeat;

    void Start()
    {
        beatInterval = 60f / bpm;
        nextBeatTime = Time.time + beatInterval;
    }

    void Update()
    {
        while (Time.time >= nextBeatTime)
        {
            beatCount++;
            OnBeat?.Invoke(beatCount);

            nextBeatTime += beatInterval;
        }
    }


    public bool IsInAttackWindow(float window = 0.1f)
    {
        float timeToNext = nextBeatTime - Time.time;
        float timeSinceLast = Time.time - (nextBeatTime - beatInterval);
        return (timeToNext <= window || timeSinceLast <= window);
    }


    public float TimeToNextBeat()
    {
        return nextBeatTime - Time.time;
    }


    public float TimeSinceLastBeat()
    {
        return Time.time - (nextBeatTime - beatInterval);
    }
}