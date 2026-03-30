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
    public GameObject feverUIWindow; // Assign the GameObject that holds your background/foreground images
    
    private int currentCombo = 0;
    private bool isFeverActive = false;
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
        if (isFeverActive) return; // Prevent adding combo while fever intro is playing

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
            
            // Immediate Cleanup
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

        // --- 1. LOCK ALL INPUTS & SHOW UI ---
        if (feverUIWindow) feverUIWindow.SetActive(true);
        
        if (playerController) {
            // CRITICAL: Ensure your PlayerController's Update/FixedUpdate 
            // returns early if ActionLock is true.
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
    
        // --- 2. THE INPUT LOCK DURATION ---
        // During this 1.5s, ActionLock is TRUE, so no keys should work.
        yield return new WaitForSecondsRealtime(1.5f);

        // --- 3. RELEASE INPUT LOCK BUT KEEP BUFF ---
        if (faceCamera) faceCamera.gameObject.SetActive(false);
        if (feverUIWindow) feverUIWindow.SetActive(false); // Hide UI after intro if desired
    
        if (_mainCam) {
            _mainCam.cullingMask = _originalMask; 
        }

        if (playerController) {
            playerController.SetActionLock(false); // Player can move/attack again
        }
    
        if (health) health.IsInvulnerable = false;

        // 8.5 seconds of gameplay with the 2x damage buff
        yield return new WaitForSecondsRealtime(8.5f);

        // --- 4. END FEVER ---
        isFeverActive = false;
        if (playerController) playerController.SetDamageMultiplier(1f);
        currentCombo = 0;
        UpdateUI();
    }

    private void UpdateUI() { 
        if (comboText) comboText.text = isFeverActive ? "!!" : currentCombo.ToString(); 
    }
}