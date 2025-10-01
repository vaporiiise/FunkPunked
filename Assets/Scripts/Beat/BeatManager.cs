using UnityEngine;
using FMODUnity;
using FMOD.Studio;
using System;
using System.Runtime.InteropServices;

public class BeatManager : MonoBehaviour
{
    public static BeatManager Instance { get; private set; }

    [Header("FMOD Settings")]
    [Tooltip("FMOD event that has constant timeline markers (for beats)")]
    public EventReference musicEvent;

    [Header("Hit Settings")]
    [Tooltip("Delay tolerance (in seconds) around the beat for a HIT")]
    public float hitWindow = 0.15f;

    private EventInstance musicInstance;
    private GCHandle timelineHandle;
    private TimelineInfo timelineInfo;

    // Public beat data
    public static event Action<int> OnBeat;
    public double BeatInterval { get; private set; } = 0.75f; // fallback = 80 BPM
    public double LastBeatDSPTime => timelineInfo.lastBeatDSPTime;

    private void Awake()
    {
        // 🔑 Singleton pattern
        if (Instance != null && Instance != this)
        {
            Destroy(gameObject);
            return;
        }
        Instance = this;
    }

    private void Start()
    {
        timelineInfo = new TimelineInfo();
        timelineHandle = GCHandle.Alloc(timelineInfo, GCHandleType.Pinned);

        musicInstance = RuntimeManager.CreateInstance(musicEvent);
        musicInstance.setUserData(GCHandle.ToIntPtr(timelineHandle));

        // Listen for timeline markers
        musicInstance.setCallback(BeatEventCallback, EVENT_CALLBACK_TYPE.TIMELINE_MARKER);

        musicInstance.start();

        Debug.Log("[BeatManager] Started FMOD music event: " + musicEvent.Path);
    }

    private void Update()
    {
        if (musicInstance.isValid())
        {
            musicInstance.getTimelinePosition(out timelineInfo.timelinePosition);
        }
    }

    private void OnDestroy()
    {
        if (musicInstance.isValid())
        {
            musicInstance.stop(FMOD.Studio.STOP_MODE.IMMEDIATE);
            musicInstance.release();
        }

        if (timelineHandle.IsAllocated)
            timelineHandle.Free();
    }

    // ✅ Call this to check if player input is on beat (within tolerance window)
    public bool IsOnBeat()
    {
        double now = AudioSettings.dspTime;
        double timeSinceBeat = now - timelineInfo.lastBeatDSPTime;
        return Math.Abs(timeSinceBeat) <= hitWindow;
    }

    // ✅ FMOD Callback for markers
    [AOT.MonoPInvokeCallback(typeof(EVENT_CALLBACK))]
    private static FMOD.RESULT BeatEventCallback(EVENT_CALLBACK_TYPE type, IntPtr instancePtr, IntPtr parameterPtr)
    {
        EventInstance instance = new EventInstance(instancePtr);

        if (type == EVENT_CALLBACK_TYPE.TIMELINE_MARKER)
        {
            IntPtr timelineInfoPtr;
            instance.getUserData(out timelineInfoPtr);

            if (timelineInfoPtr != IntPtr.Zero)
            {
                var handle = GCHandle.FromIntPtr(timelineInfoPtr);
                var info = (TimelineInfo)handle.Target;

                double now = AudioSettings.dspTime;

                // Calculate beat interval
                if (info.lastBeatDSPTime > 0)
                {
                    info.beatInterval = now - info.lastBeatDSPTime;
                }
                info.lastBeatDSPTime = now;

                // Update public BeatInterval
                if (Instance != null)
                    Instance.BeatInterval = info.beatInterval;

                // Beat index count
                info.beatIndex++;

                // Fire event
                OnBeat?.Invoke(info.beatIndex);
            }
        }
        return FMOD.RESULT.OK;
    }

    // Helper struct to hold timeline info
    class TimelineInfo
    {
        public int timelinePosition = 0;
        public int beatIndex = 0;
        public double lastBeatDSPTime = 0;
        public double beatInterval = 0.75; // default
    }
    public void SetMusicParameter(string paramName, float value)
    {
        if (musicInstance.isValid())
        {
            var result = musicInstance.setParameterByName(paramName, value);
            Debug.Log($"[FMOD] Set {paramName} = {value}, Result = {result}");
        }
        else
        {
            Debug.LogWarning("[FMOD] Music instance is not valid!");
        }
    }
}
