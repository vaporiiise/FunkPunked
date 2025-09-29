using UnityEngine;
using FMODUnity;
using FMOD.Studio;
using System;
using System.Runtime.InteropServices;

public class BeatManager : MonoBehaviour
{
    [Header("FMOD Settings")]
    public EventReference musicEvent;

    [Header("Beat Settings")]
    [Tooltip("Allowed timing window in seconds (e.g. 0.15 = 150ms)")]
    public float hitWindow = 0.15f;

    private EventInstance musicInstance;
    private GCHandle timelineHandle;
    private TimelineInfo timelineInfo;

    public static event Action<int> OnBeat; // notify listeners

    private void Start()
    {
        timelineInfo = new TimelineInfo();
        timelineHandle = GCHandle.Alloc(timelineInfo, GCHandleType.Pinned);

        musicInstance = RuntimeManager.CreateInstance(musicEvent);
        musicInstance.setUserData(GCHandle.ToIntPtr(timelineHandle));

        musicInstance.setCallback(BeatEventCallback,
            EVENT_CALLBACK_TYPE.TIMELINE_MARKER);

        musicInstance.start();
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

    // --- Public check: did player hit close enough to the last beat? ---
    public bool IsOnBeat()
    {
        double now = AudioSettings.dspTime;
        double timeSinceBeat = now - timelineInfo.lastBeatDSPTime;

        return Math.Abs(timeSinceBeat) <= hitWindow;
    }

    // --- FMOD Callback for beat markers ---
    [AOT.MonoPInvokeCallback(typeof(EVENT_CALLBACK))]
    private static FMOD.RESULT BeatEventCallback(EVENT_CALLBACK_TYPE type, IntPtr instancePtr, IntPtr parameterPtr)
    {
        EventInstance instance = new EventInstance(instancePtr);

        if (type == EVENT_CALLBACK_TYPE.TIMELINE_MARKER)
        {
            var parameter = (TIMELINE_MARKER_PROPERTIES)Marshal.PtrToStructure(parameterPtr, typeof(TIMELINE_MARKER_PROPERTIES));

            IntPtr timelineInfoPtr;
            instance.getUserData(out timelineInfoPtr);
            if (timelineInfoPtr != IntPtr.Zero)
            {
                var handle = GCHandle.FromIntPtr(timelineInfoPtr);
                var info = (TimelineInfo)handle.Target;

                info.beatIndex++;
                info.lastBeatDSPTime = AudioSettings.dspTime;

                OnBeat?.Invoke(info.beatIndex);
            }
        }
        return FMOD.RESULT.OK;
    }

    // --- Helper Struct ---
    class TimelineInfo
    {
        public int timelinePosition = 0;
        public int beatIndex = 0;
        public double lastBeatDSPTime = 0;
    }
}
