using UnityEngine;
using UnityEngine.UI;
using TMPro;
using FMODUnity;
using FMOD.Studio;

public class ComboManager : MonoBehaviour
{
    [Header("UI")]
    public Image comboBar; // UI bar (set to Filled)
    public TextMeshProUGUI comboText;

    [Header("Combo Settings")]
    public float comboResetTime = 3f;

    [Header("FMOD Music (Optional)")]
    [SerializeField] private string fmodEvent = "event:/YourMusic";

    private int comboCount = 0;
    private float comboTimer = 0f;
    private bool comboActive = false;

    private EventInstance musicInstance;
    private bool fmodStarted = false;

    void Start()
    {
        // Start FMOD event only once (optional)
        if (!string.IsNullOrEmpty(fmodEvent))
        {
            musicInstance = RuntimeManager.CreateInstance(fmodEvent);
            musicInstance.start();
            fmodStarted = true;
        }

        UpdateUI();
    }

    void Update()
    {
        if (comboActive)
        {
            comboTimer -= Time.deltaTime;

            // Update UI bar
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
    }

    public void ResetCombo()
    {
        comboCount = 0;
        comboActive = false;
        comboTimer = 0f;

        UpdateUI();
//        Debug.Log("Combo Reset!");
    }

    private void UpdateUI()
    {
        if (comboText != null)
            comboText.text = "x" + comboCount;

        if (comboBar != null)
            comboBar.fillAmount = comboActive ? comboTimer / comboResetTime : 0f;
    }

    private void OnDestroy()
    {
        if (fmodStarted)
        {
            musicInstance.stop(FMOD.Studio.STOP_MODE.IMMEDIATE);
            musicInstance.release();
        }
    }
}
