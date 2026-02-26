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

    public void AddComboHit() {
        currentCombo++;
        UpdateUI();
        if (currentCombo >= feverTriggerCount && !isFeverActive) StartCoroutine(ActivateFeverMode());
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