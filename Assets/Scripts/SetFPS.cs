using UnityEngine;

public class SetFPS : MonoBehaviour
{
    [Header("Frame Rate Settings")]
    [Tooltip("Target FPS for the game.")]
    public int targetFrameRate = 60;

    [Tooltip("Enable or disable VSync. 0 = Off, 1 = On")]
    public int vSyncCount = 0;

    void Awake()
    {
        QualitySettings.vSyncCount = vSyncCount;
        Application.targetFrameRate = targetFrameRate;
    }

    void Update()
    {
        if (Application.targetFrameRate != targetFrameRate)
            Application.targetFrameRate = targetFrameRate;
    }
}