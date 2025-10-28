using UnityEngine;
using FMODUnity;
using FMOD.Studio;

public class FMODTrigger : MonoBehaviour
{
    [SerializeField] private EventReference fmodEvent;
    private EventInstance eventInstance;

    public void PlayOneShot()
    {
        RuntimeManager.PlayOneShot(fmodEvent, transform.position);
    }

    public void PlayEvent()
    {
        eventInstance = RuntimeManager.CreateInstance(fmodEvent);
        eventInstance.start();
    }

    public void StopEvent()
    {
        if (eventInstance.isValid())
        {
            eventInstance.stop(FMOD.Studio.STOP_MODE.ALLOWFADEOUT);
            eventInstance.release();
        }
    }
}