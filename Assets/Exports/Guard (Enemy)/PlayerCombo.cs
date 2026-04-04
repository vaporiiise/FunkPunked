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

    // --- Added for Boss Control ---
    [Header("Boss Settings")]
    public string bossTag = "Enemy"; 
    // ------------------------------
    
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
            
            // Safety: Ensure boss is unfrozen if fever is interrupted
            SetBossFrozen(false);

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

        // 1. Freeze the Boss immediately
        SetBossFrozen(true);

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

        // Sequence Duration (3 seconds)
        yield return new WaitForSecondsRealtime(3f);

        if (faceCamera) faceCamera.gameObject.SetActive(false);
        if (feverUIWindow) feverUIWindow.SetActive(false); 
    
        if (_mainCam) {
            _mainCam.cullingMask = _originalMask; 
        }

        if (playerController) {
            playerController.SetActionLock(false); 
        }
    
        if (health) health.IsInvulnerable = false;

        // 2. Wait the additional +1 second before unfreezing boss
        yield return new WaitForSecondsRealtime(1f);
        SetBossFrozen(false);

        // Continue the 20s fever duration (minus the 4s already spent)
        yield return new WaitForSecondsRealtime(19f);

        isFeverActive = false;
        if (playerController) playerController.SetDamageMultiplier(1f); // Reset to 1f
        currentCombo = 0;
        UpdateUI();
    }

    private void SetBossFrozen(bool freeze) {
        GameObject boss = GameObject.FindGameObjectWithTag(bossTag);
        if (boss != null) {
            // Option A: If the boss uses a NavMeshAgent
            UnityEngine.AI.NavMeshAgent agent = boss.GetComponent<UnityEngine.AI.NavMeshAgent>();
            if (agent != null) agent.isStopped = freeze;

            // Option B: Disable the Boss AI script (Replace 'BossAI' with your actual script name)
            // BossAI ai = boss.GetComponent<BossAI>();
            // if (ai != null) ai.enabled = !freeze;

            // Option C: Pause Animator
            Animator bossAnim = boss.GetComponentInChildren<Animator>();
            if (bossAnim != null) bossAnim.speed = freeze ? 0 : 1;
        }
    }

    private void UpdateUI() { 
        if (comboText) comboText.text = isFeverActive ? "!!" : currentCombo.ToString(); 
    }
}