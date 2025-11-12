using System;
using System.Collections.Generic;
using UnityEngine;
using FMODUnity;
using FMOD.Studio;

public class BeatSystem : MonoBehaviour
{
    [Header("Audio")]
    public AudioSource musicAudioSource;         // Unity AudioSource for BPM sync
    public StudioEventEmitter musicEmitter;      // Optional: FMOD for special markers

    [Header("Animator")]
    public Animator animator;
    public string animationEighth = "Attack1";      // 1/8 beat animation
    public string animationSixteenth = "Attack2";   // 1/16 beat animation

    [Header("BPM Settings")]
    public float bpm = 75f;                         // constant BPM

    [Header("Input Buffer")]
    public BeatInputBuffer inputBuffer;            // stores queued player attacks

    private float secondsPerBeat;
    private float nextBeatTime;

    // Queue for safe main-thread animation execution
    private Queue<string> animationQueue = new Queue<string>();

    void Start()
    {
        if (musicAudioSource == null)
        {
            Debug.LogError("Music AudioSource not assigned!");
            return;
        }

        // Calculate seconds per beat
        secondsPerBeat = 60f / bpm;
        nextBeatTime = secondsPerBeat;

        // Optional FMOD markers for special events
        if (musicEmitter != null)
        {
            EventInstance musicEvent = musicEmitter.EventInstance;
            if (musicEvent.isValid())
            {
                musicEvent.setCallback(OnMarkerCallback, EVENT_CALLBACK_TYPE.TIMELINE_MARKER);
            }
        }
    }

    void Update()
    {
        float songTime = musicAudioSource.time;

        // Queue attack input from player
        if (Input.GetKeyDown(KeyCode.Space))
        {
            inputBuffer.QueueAttack();
        }

        // Process beats
        while (songTime >= nextBeatTime)
        {
            if (inputBuffer.HasQueuedAttack())
            {
                inputBuffer.DequeueAttack();

                string chosenAnim = ChooseRandomAnimation();

                lock (animationQueue)
                {
                    animationQueue.Enqueue(chosenAnim);
                }
            }

            nextBeatTime += secondsPerBeat;
        }

        // Execute animations on main thread
        lock (animationQueue)
        {
            while (animationQueue.Count > 0)
            {
                string anim = animationQueue.Dequeue();
                animator.Play(anim);
                Debug.Log("Attack triggered: " + anim + " at song time " + songTime);
            }
        }
    }

    // Randomly choose 1/8 or 1/16 beat animation
    private string ChooseRandomAnimation()
    {
        return UnityEngine.Random.value > 0.5f ? animationEighth : animationSixteenth;
    }

    // FMOD callback (thread-safe)
    private FMOD.RESULT OnMarkerCallback(EVENT_CALLBACK_TYPE type, IntPtr instancePtr, IntPtr parameterPtr)
    {
        if (type == EVENT_CALLBACK_TYPE.TIMELINE_MARKER)
        {
            // Enqueue special attack safely
            lock (animationQueue)
            {
                animationQueue.Enqueue("SpecialAttack"); // change name to your special animation
            }

            Debug.Log("Special FMOD marker triggered!");
        }

        return FMOD.RESULT.OK;
    }
}
