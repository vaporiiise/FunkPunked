using UnityEngine;

public class ComboManager : MonoBehaviour
{
    public static ComboManager Instance;

    private int comboStep = 0;

    private void Awake()
    {
        if (Instance == null) Instance = this;
        else Destroy(gameObject);
    }

    public void AddCombo()
    {
        comboStep++;
        Debug.Log($"Combo Step: {comboStep}");

        if (comboStep == 10)
        {
            Debug.Log("🔥 Combo 10 reached! Activating music layer...");
            if (BeatManager.Instance != null)
                BeatManager.Instance.SetMusicParameter("ComboLevel", 1f);
        }
    }

    public void ResetCombo()
    {
        if (comboStep > 0)
            Debug.Log("Combo Reset!");

        comboStep = 0;

        // Reset FMOD parameter
        if (BeatManager.Instance != null)
            BeatManager.Instance.SetMusicParameter("ComboLevel", 0f);
    }
}