using UnityEngine;
using UnityEngine.UI;
using TMPro;
using System;

public class ComboManager : MonoBehaviour
{
    [Header("UI")]
    public Image comboBar;
    public TextMeshProUGUI comboText;

    [Header("Combo Settings")]
    public float comboResetTime = 3f;

    private int comboCount = 0;
    private float comboTimer = 0f;
    private bool comboActive = false;

    public event Action OnComboReset;

    void Update()
    {
        if (comboActive)
        {
            comboTimer -= Time.deltaTime;

            if (comboBar != null)
                comboBar.fillAmount = comboTimer / comboResetTime;

            if (comboTimer <= 0f)
                ResetCombo();
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
    }

    public void ResetCombo()
    {
        comboCount = 0;
        comboActive = false;
        comboTimer = 0f;

        UpdateUI();
        Debug.Log("Combo Reset!");

        MusicManager.Instance?.SetMusicState(0);

        OnComboReset?.Invoke();
    }

    private void UpdateUI()
    {
        if (comboText != null)
            comboText.text = "x" + comboCount;

        if (comboBar != null)
            comboBar.fillAmount = comboActive ? comboTimer / comboResetTime : 0f;
    }

    private void UpdateMusicState()
    {
        if (MusicManager.Instance == null) return;

        if (comboCount >= 35)
            MusicManager.Instance.SetMusicState(2, 1.1f); 
        else if (comboCount >= 10)
            MusicManager.Instance.SetMusicState(1, 1.2f);
        else
            MusicManager.Instance.SetMusicState(0, 1.3f);
    }
}