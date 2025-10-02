using UnityEngine;
using FMODUnity;
using FMOD.Studio;

public class ComboManager : MonoBehaviour
{
    public int comboCount = 0;
    public int comboThreshold = 10; // when FMOD should change
    public string fmodEvent = "event:/YourMusic"; 
    public string parameterName = "ComboLevel";

    private EventInstance musicInstance;

    void Start()
    {
        // Start FMOD event (make sure only ONE instance exists)
        musicInstance = RuntimeManager.CreateInstance(fmodEvent);
        musicInstance.start();
    }

    public void AddCombo()
    {
        comboCount++;
        Debug.Log("Combo: " + comboCount);

        if (comboCount >= comboThreshold)
        {
            // Set FMOD parameter
            musicInstance.setParameterByName(parameterName, 1f);
            Debug.Log("FMOD ComboLevel activated!");
        }
    }

    public void ResetCombo()
    {
        comboCount = 0;
        musicInstance.setParameterByName(parameterName, 0f);
    }

    private void OnDestroy()
    {
        musicInstance.stop(FMOD.Studio.STOP_MODE.IMMEDIATE);
        musicInstance.release();
    }
}