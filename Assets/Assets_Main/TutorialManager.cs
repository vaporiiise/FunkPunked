using UnityEngine;
using UnityEngine.UI;
using UnityEngine.SceneManagement;
using System.Collections;

public class TutorialManager : MonoBehaviour
{
    public static TutorialManager Instance;

    [Header("Input Keys")]
    public KeyCode attackKey = KeyCode.Mouse0;
    public KeyCode parryKey = KeyCode.Space;

    [Header("UI Panels")]
    public GameObject attackPrompt; 
    public GameObject infoPanel1;   
    public GameObject infoPanel2;   
    public GameObject parryPrompt;  
    public Image flashOverlay; 

    [Header("Targets")]
    public GameObject enemyObject;
    public string nextSceneName;

    private EnemyAI _ai;
    public int currentStep = 0; // Public so the Enemy script can check it

    void Awake() { Instance = this; }

    void Start()
    {
        _ai = enemyObject.GetComponent<EnemyAI>();
        if(_ai) _ai.enabled = false; 
        EnterStep(0);
    }

    void Update()
    {
        if (currentStep == 0 && Input.GetKeyDown(attackKey))
        {
            NotifyPlayerAttacked();
        }
        else if (currentStep == 1 && Input.anyKeyDown)
        {
            EnterStep(2);
        }
        else if (currentStep == 2 && Input.anyKeyDown)
        {
            StartCombat();
        }
        else if (currentStep == 3 && Time.timeScale == 0f && Input.GetKeyDown(parryKey))
        {
            ResumeFromParry();
        }

        if (enemyObject == null && currentStep >= 3)
        {
            Time.timeScale = 1f; 
            SceneManager.LoadScene(nextSceneName);
        }
    }

    private void EnterStep(int nextStep)
    {
        currentStep = nextStep;
        Time.timeScale = 0f; 

        if(attackPrompt) attackPrompt.SetActive(currentStep == 0);
        if(infoPanel1) infoPanel1.SetActive(currentStep == 1);
        if(infoPanel2) infoPanel2.SetActive(currentStep == 2);
        if(parryPrompt) parryPrompt.SetActive(currentStep == 3);
    }

    public void NotifyPlayerAttacked() => EnterStep(1);

    private void StartCombat()
    {
        if(infoPanel2) infoPanel2.SetActive(false);
        Time.timeScale = 1f; 
        if(_ai) _ai.enabled = true; 
        currentStep = 3; 
    }

    // This is called by AnimEvent_TriggerFlash or AE_Flash
    public void AnimEvent_TriggerFlash()
    {
        // Only freeze if we haven't parried yet
        if (currentStep == 3)
        {
            StartCoroutine(FlashEffect());
            EnterStep(3); 
        }
    }

    IEnumerator FlashEffect()
    {
        if (flashOverlay == null) yield break;
        flashOverlay.color = new Color(1, 1, 1, 0.8f);
        float elapsed = 0f;
        while (elapsed < 0.2f)
        {
            elapsed += Time.unscaledDeltaTime;
            flashOverlay.color = new Color(1, 1, 1, Mathf.Lerp(0.8f, 0f, elapsed / 0.2f));
            yield return null;
        }
        flashOverlay.color = new Color(1, 1, 1, 0);
    }

    private void ResumeFromParry()
    {
        if(parryPrompt) parryPrompt.SetActive(false);
        Time.timeScale = 1f;
        currentStep = 4; // Damage is now enabled
    }
}