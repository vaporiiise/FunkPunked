using UnityEngine;
using System;

public class BeatScheduler : MonoBehaviour
{
    public float bpm = 120f;
    private float beatInterval; 
    private float nextBeatTime;
    private int beatCount;

    public static event Action<int> OnBeat; 

    void Start()
    {
        beatInterval = 60f / bpm;
        nextBeatTime = Time.time + beatInterval;
    }

    void Update()
    {
        if (Time.time >= nextBeatTime)
        {
            beatCount++;
            OnBeat?.Invoke(beatCount);
//            Debug.Log("Beat: " + beatCount);
            nextBeatTime += beatInterval;
        }
    }

    public bool IsInAttackWindow(float window = 0.1f)
    {
        float timeToNext = nextBeatTime - Time.time;
        float timeSinceLast = Time.time - (nextBeatTime - beatInterval);
        return (timeToNext <= window || timeSinceLast <= window);
    }
}