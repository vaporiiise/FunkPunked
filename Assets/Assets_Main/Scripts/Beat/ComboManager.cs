using UnityEngine;
using UnityEngine.UI;
using TMPro;
using System;
using System.Collections.Generic;

[System.Serializable]
public class ComboMusicLevel
{
    [Tooltip("Minimum combo required to reach this level")]
    public int comboThreshold = 10;

    [Tooltip("FMOD parameter value to set when this combo is reached")]
    public float musicLevel = 1f;
}

public class ComboManager : MonoBehaviour
{
    [Header("UI")]
    public Image comboBar;
    public TextMeshProUGUI comboText;

    [Header("Disc Animation")]
    [Tooltip("Animator that controls the spinning discs")]
    public Animator discAnimator;
    public string stageParameter = "StageIndex";
    public string nextStageTrigger = "NextStage";
    public string failTrigger = "Fail";

    [Header("Combo Settings")]
    public float comboResetTime = 3f;

    [Header("FMOD Parameter")]
    [Tooltip("The FMOD parameter name to control (e.g., 'MusicState' or 'BossMusicState')")]
    public string parameterName = "MusicState";

    [Header("Combo → Music Mapping")]
    [Tooltip("Define how combo thresholds affect music levels")]
    public List<ComboMusicLevel> musicLevels = new List<ComboMusicLevel>();

    private int comboCount = 0;
    private float comboTimer = 0f;
    private bool comboActive = false;

    private int currentStage = 1;
    private int maxStage = 3;

    public event Action OnComboReset;

    void Update()
    {
        if (comboActive)
        {
            comboTimer -= Time.deltaTime;

            if (comboTimer <= 0f)
            {
                ResetCombo();
            }

            UpdateUI();
        }
    }

    public void AddCombo()
    {
        comboCount++;
        comboTimer = comboResetTime;
        comboActive = true;

        UpdateUI();
        Debug.Log("x" + comboCount);

        UpdateMusicState();
        UpdateDiscStage();
    }

    public void ResetCombo()
    {
        comboActive = false;
        comboCount = 0;
        comboTimer = 0f;

        if (comboText != null)
            comboText.text = "x0";

        if (comboBar != null)
            comboBar.fillAmount = 0f;

        Debug.Log("Combo Reset!");

        MusicManager.Instance?.SetMusicState(parameterName, 0f);
        ResetDiscStage();

        OnComboReset?.Invoke();
    }

    private void UpdateUI()
    {
        if (comboText != null)
            comboText.text = "x" + comboCount;

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

    private void UpdateDiscStage()
    {
        // Determine stage based on combo thresholds
        int newStage = 1;

        for (int i = 0; i < musicLevels.Count && i < maxStage; i++)
        {
            if (comboCount >= musicLevels[i].comboThreshold)
                newStage = i + 1;
        }

        if (newStage > currentStage)
        {
            currentStage = newStage;
            discAnimator.SetInteger(stageParameter, currentStage);
            discAnimator.SetTrigger(nextStageTrigger);
            Debug.Log("Entered Disc Stage " + currentStage);
        }
    }

    private void ResetDiscStage()
    {
        if (currentStage != 1)
        {
            currentStage = 1;
            discAnimator.SetInteger(stageParameter, currentStage);
            discAnimator.SetTrigger(failTrigger);
            Debug.Log("Disc Reset to Stage 1");
        }
    }
}
