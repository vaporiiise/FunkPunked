using UnityEngine;
using TMPro;
using Unity.Cinemachine; 
using System.Collections;

public class PlayerCombo : MonoBehaviour
{
    [Header("Dependencies")]
    public PlayerController playerController;
    public CinemachineCamera faceCamera; 
    public Animator playerAnimator;

    [Header("UI")]
    public TextMeshProUGUI comboText;

    [Header("Fever Mode Settings")]
    public string feverAnimTrigger = "FeverTime";
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
        if(playerAnimator == null) playerAnimator = GetComponentInChildren<Animator>();
    }

    private void Update()
    {
        if(currentCombo > 0 && !isFeverActive)
        {
            comboTimer += Time.deltaTime;
            if(comboTimer >= comboResetTime) ResetCombo();
        }
    }

    public void AddComboHit()
    {
        currentCombo++;
        comboTimer = 0f;
        UpdateUI();
        if (currentCombo >= feverTriggerCount && !isFeverActive) StartCoroutine(ActivateFeverMode());
    }

    private IEnumerator ActivateFeverMode()
    {
        isFeverActive = true;
        if (playerAnimator != null) playerAnimator.SetTrigger(feverAnimTrigger);
        if (faceCamera != null) faceCamera.gameObject.SetActive(true);
        if (playerController != null) playerController.SetDamageMultiplier(feverDamageMultiplier);
        
        yield return new WaitForSeconds(feverPanDuration);
        if (faceCamera != null) faceCamera.gameObject.SetActive(false);
        yield return new WaitForSeconds(feverDuration - feverPanDuration);
        EndFeverMode();
    }

    private void EndFeverMode()
    {
        isFeverActive = false;
        if (playerController != null) playerController.SetDamageMultiplier(1f);
        ResetCombo(); 
    }

    public void ResetCombo()
    {
        currentCombo = 0;
        UpdateUI();
    }

    private void UpdateUI()
    {
        if(comboText != null) comboText.text = isFeverActive ? "FEVER!" : currentCombo + " HIT"; 
    }
}