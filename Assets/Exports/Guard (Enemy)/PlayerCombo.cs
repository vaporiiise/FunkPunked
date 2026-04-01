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

    [Header("UI Settings")]
    public GameObject feverUIWindow; 
    
    private int currentCombo = 0;
    public static bool isFeverActive = false;
    private Coroutine feverCoroutine;
    
    [Header("Rendering Settings")]
    public LayerMask feverMask; 
    private LayerMask _originalMask;
    private Camera _mainCam;
    
    void Start() {
        _mainCam = Camera.main;
        if (playerController == null) playerController = GetComponent<PlayerController>();
        
        if (feverUIWindow) feverUIWindow.SetActive(false);
    }

    public void AddComboHit() {
        if (isFeverActive) return; 

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
            if (feverUIWindow) feverUIWindow.SetActive(false);
            if (playerController) {
                playerController.SetActionLock(false);
                playerController.SetDamageMultiplier(1f);
            }
            
            currentCombo = 0;
            UpdateUI();
        }
    }

    private IEnumerator ActivateFeverMode() {
        isFeverActive = true;

        if (feverUIWindow) feverUIWindow.SetActive(true);
        
        if (playerController) {

            playerController.SetActionLock(true); 
            playerController.SetDamageMultiplier(2f);

            Animator anim = playerController.GetComponentInChildren<Animator>();
            if (anim) {
                anim.Play("FeverStart", 0, 0f); 
                anim.ResetTrigger("Attack"); 
                anim.SetInteger("ComboStep", 0);
                anim.Update(0); 
            }
        }

        PlayerHealth health = GetComponent<PlayerHealth>();
        if (health) health.IsInvulnerable = true;

        if (_mainCam) {
            _originalMask = _mainCam.cullingMask;
            _mainCam.cullingMask = feverMask; 
        }

        if (faceCamera) faceCamera.gameObject.SetActive(true);
    

        yield return new WaitForSecondsRealtime(1.5f);

        if (faceCamera) faceCamera.gameObject.SetActive(false);
        if (feverUIWindow) feverUIWindow.SetActive(false); 
    
        if (_mainCam) {
            _mainCam.cullingMask = _originalMask; 
        }

        if (playerController) {
            playerController.SetActionLock(false); 
        }
    
        if (health) health.IsInvulnerable = false;

        yield return new WaitForSecondsRealtime(20f);

        isFeverActive = false;
        if (playerController) playerController.SetDamageMultiplier(2f);
        currentCombo = 0;
        UpdateUI();
    }

    private void UpdateUI() { 
        if (comboText) comboText.text = isFeverActive ? "!!" : currentCombo.ToString(); 
    }
}