using UnityEngine;
using TMPro;
using Unity.Cinemachine; 
using System.Collections;

public class PlayerCombo : MonoBehaviour
{
    [Header("Dependencies")]
    public PlayerController playerController;
    public CinemachineCamera faceCamera; 

    [Header("Effects")]
    public ParticleSystem feverVFX; 

    [Header("UI")]
    public TextMeshProUGUI comboText;

    [Header("Fever Mode Settings")]
    public int feverTriggerCount = 15;      
    public float feverDuration = 10f;       
    public float feverPanDuration = 1.5f;   
    public float feverDamageMultiplier = 2f; 

    public int currentCombo = 0;  
    private float comboTimer = 0f;
    private float comboResetTime = 2f;
    private bool isFeverActive = false;

    private void Start()
    {
        if(comboText != null) comboText.text = "0 HIT";
        if(faceCamera != null) faceCamera.gameObject.SetActive(false);
        if(feverVFX != null) feverVFX.Stop();
    }

    private void Update()
    {
        if(currentCombo > 0 && !isFeverActive)
        {
            comboTimer += Time.deltaTime;
            if(comboTimer >= comboResetTime)
            {
                ResetCombo();
            }
        }
    }

    public void AddComboHit()
    {
        currentCombo++;
        comboTimer = 0f;
        UpdateUI();

        if (currentCombo >= feverTriggerCount && !isFeverActive)
        {
            StartCoroutine(ActivateFeverMode());
        }
    }

    private IEnumerator ActivateFeverMode()
    {
        isFeverActive = true;

        if (faceCamera != null) faceCamera.gameObject.SetActive(true);
        if (feverVFX != null) feverVFX.Play();
        if (playerController != null) playerController.SetDamageMultiplier(feverDamageMultiplier);
        if (comboText != null) comboText.color = Color.red;

        yield return new WaitForSeconds(feverPanDuration);

        if (faceCamera != null) faceCamera.gameObject.SetActive(false);

        yield return new WaitForSeconds(feverDuration - feverPanDuration);

        EndFeverMode();
    }

    private void EndFeverMode()
    {
        isFeverActive = false;
        if (feverVFX != null) feverVFX.Stop();
        if (playerController != null) playerController.SetDamageMultiplier(1f);
        if (comboText != null) comboText.color = Color.white;
        ResetCombo(); 
    }

    private void ResetCombo()
    {
        currentCombo = 0;
        UpdateUI();
    }

    private void UpdateUI()
    {
        if(comboText != null)
        {
            comboText.text = isFeverActive ? "FEVER!" : currentCombo + " HIT"; 
        }
    }
}