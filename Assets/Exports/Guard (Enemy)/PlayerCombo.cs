using UnityEngine;
using TMPro;
using Unity.Cinemachine;
using System.Collections;

public class PlayerCombo : MonoBehaviour
{
    public PlayerController playerController;
    public CinemachineCamera faceCamera;
    public TextMeshProUGUI comboText;
    public int feverTriggerCount = 15;
    
    private int currentCombo = 0;
    private bool isFeverActive = false;
    private Coroutine feverCoroutine;

    public void AddComboHit() {
        currentCombo++;
        UpdateUI();
        if (currentCombo >= feverTriggerCount && !isFeverActive) {
            if (feverCoroutine != null) StopCoroutine(feverCoroutine);
            feverCoroutine = StartCoroutine(ActivateFeverMode());
        }
    }

    public void ResetFeverOnHit() {
        if (isFeverActive) {
            if (feverCoroutine != null) StopCoroutine(feverCoroutine);
            isFeverActive = false;
            if (faceCamera) faceCamera.gameObject.SetActive(false);
            if (playerController) playerController.SetDamageMultiplier(1f);
            currentCombo = 0;
            UpdateUI();
        }
    }

    private IEnumerator ActivateFeverMode() {
        isFeverActive = true;
        if (faceCamera) faceCamera.gameObject.SetActive(true);
        if (playerController) playerController.SetDamageMultiplier(2f);
        yield return new WaitForSecondsRealtime(1.5f);
        if (faceCamera) faceCamera.gameObject.SetActive(false);
        yield return new WaitForSecondsRealtime(8.5f);
        isFeverActive = false;
        if (playerController) playerController.SetDamageMultiplier(1f);
        currentCombo = 0;
        UpdateUI();
    }

    private void UpdateUI() { if (comboText) comboText.text = isFeverActive ? "FEVER!" : currentCombo.ToString(); }
}