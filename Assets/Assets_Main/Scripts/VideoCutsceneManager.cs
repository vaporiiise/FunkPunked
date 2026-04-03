using UnityEngine;
using UnityEngine.Video;
using UnityEngine.SceneManagement;
using UnityEngine.UI; // Required for the Image component

public class VideoCutsceneManager : MonoBehaviour
{
    [Header("References")]
    public VideoPlayer videoPlayer;
    public Image skipFillImage; // Assign your "Filled" Image here
    public GameObject skipUIContainer; // Assign the parent object of the bar to hide/show it
    public string nextSceneName;

    [Header("Settings")]
    public float holdDuration = 2.0f;
    public KeyCode skipKey = KeyCode.Space;
    
    private float holdTimer = 0f;
    private AsyncOperation asyncLoad;
    private bool isTransitioning = false;

    void Start()
    {
        // Ensure the UI is hidden and fill is empty
        if (skipUIContainer != null) skipUIContainer.SetActive(false);
        if (skipFillImage != null) skipFillImage.fillAmount = 0;

        videoPlayer.loopPointReached += (vp) => ActivateNextScene();
        StartCoroutine(LoadNextSceneAsync());
    }

    void Update()
    {
        HandleSkipInput();
    }

    void HandleSkipInput()
    {
        if (isTransitioning) return;

        if (Input.GetKey(skipKey))
        {
            if (skipUIContainer != null) skipUIContainer.SetActive(true);
            
            holdTimer += Time.deltaTime;
            
            // Sync the fill amount (0 to 1)
            if (skipFillImage != null)
            {
                skipFillImage.fillAmount = holdTimer / holdDuration;
            }

            if (holdTimer >= holdDuration)
            {
                ActivateNextScene();
            }
        }
        else
        {
            // Smoothly reset or just snap back
            holdTimer = 0f;
            if (skipFillImage != null) skipFillImage.fillAmount = 0;
            if (skipUIContainer != null) skipUIContainer.SetActive(false);
        }
    }

    System.Collections.IEnumerator LoadNextSceneAsync()
    {
        asyncLoad = SceneManager.LoadSceneAsync(nextSceneName);
        asyncLoad.allowSceneActivation = false;
        yield return null;
    }

    void ActivateNextScene()
    {
        if (isTransitioning) return;
        isTransitioning = true;
        
        if (asyncLoad != null)
            asyncLoad.allowSceneActivation = true;
    }
}