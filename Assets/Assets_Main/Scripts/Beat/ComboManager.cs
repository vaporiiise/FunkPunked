using UnityEngine;
using UnityEngine.UI;
using TMPro;
using System;
using System.Collections.Generic;

[System.Serializable]
public class ComboMusicLevel
{
    public int comboThreshold = 10;
    public float musicLevel = 1f;
}

public class ComboManager : MonoBehaviour
{
    [Header("UI")]
    public Image comboBar;
    public TextMeshProUGUI comboText;
    public TextMeshProUGUI stageText;   // <-- show A / S / P

    [Header("Combo Settings")]
    public float comboResetTime = 3f;

    [Header("FMOD Parameter")]
    public string parameterName = "MusicState";

    [Header("Combo → Music Mapping")]
    public List<ComboMusicLevel> musicLevels = new List<ComboMusicLevel>();

    private int comboCount = 0;
    private float comboTimer = 0f;
    private bool comboActive = false;

    private char currentStage = 'A';   // <-- A, S, P

    public event Action OnComboReset;

    void Update()
    {
        if (!comboActive) return;

        comboTimer -= Time.deltaTime;

        if (comboTimer <= 0f)
        {
            ResetCombo();
        }

        UpdateUI();
    }

    public void AddCombo()
    {
        comboCount++;
        comboTimer = comboResetTime;
        comboActive = true;

        UpdateUI();
        UpdateMusicState();
        UpdateStageASP();
    }

    public void ResetCombo()
    {
        comboActive = false;
        comboCount = 0;
        comboTimer = 0f;

        currentStage = 'A';
        if (stageText != null) stageText.text = "A";

        if (comboText != null)
            comboText.text = "0";

        if (comboBar != null)
            comboBar.fillAmount = 0f;

        Debug.Log("Combo Reset!");

        MusicManager.Instance?.SetMusicState(parameterName, 0f);

        OnComboReset?.Invoke();
    }

    private void UpdateUI()
    {
        if (comboText != null)
            comboText.text = "" + comboCount;

        if (comboBar != null)
        {
            float fill = Mathf.Clamp01(comboTimer / comboResetTime);
            comboBar.fillAmount = fill;
        }
    }

    private void UpdateMusicState()
    {
        if (MusicManager.Instance == null || musicLevels.Count == 0)
            return;

        float newLevel = 0f;

        foreach (var level in musicLevels)
        {
            if (comboCount >= level.comboThreshold)
                newLevel = level.musicLevel;
        }

        MusicManager.Instance.SetMusicState(parameterName, newLevel);
    }

    private void UpdateStageASP()
    {
        char newStage = 'A';

        if (musicLevels.Count > 1 && comboCount >= musicLevels[1].comboThreshold)
            newStage = 'S';

        if (musicLevels.Count > 2 && comboCount >= musicLevels[2].comboThreshold)
            newStage = 'P';

        if (newStage != currentStage)
        {
            currentStage = newStage;
            if (stageText != null) stageText.text = currentStage.ToString();
            Debug.Log("Stage: " + currentStage);
        }
    }
}
