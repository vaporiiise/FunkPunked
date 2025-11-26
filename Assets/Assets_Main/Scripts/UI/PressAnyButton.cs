using UnityEngine;
using UnityEngine.UI;
using UnityEngine.Video;
using TMPro;
using FMODUnity;
using FMOD.Studio;
using System.Collections;

public class PressAnyButton : MonoBehaviour
{
    [Header("UI Manager")]
    public MainMenuManager menuManager;

    [Header("Blinking Text")]
    public GameObject pressAnyButtonText;
    public float blinkSpeed = 2f;

    [Header("Optional UI")]
    public GameObject imageToHide; // image to hide
    private Graphic imageGraphic;

    [Header("FMOD")]
    [SerializeField] public EventReference musicEvent;   // Loop A → Loop B event
    [SerializeField] public EventReference actionEvent;  // One-shot SFX
    private EventInstance musicInstance;

    [Header("Video Player")]
    public GameObject videoCanvas;        // parent canvas of video
    public VideoPlayer videoPlayer;       // assign your intro video here
    public GameObject nextScreenCanvas;   // the canvas to show after video ends

    [Header("Next Canvas Fade In")]
    public CanvasGroup fadeInImage;       // image to fade in after video
    public float fadeDuration = 1f;       // duration of fade

    private bool hasPressed = false;

    void Awake()
    {
        // Blink text setup
        if (pressAnyButtonText != null)
        {
            imageGraphic = pressAnyButtonText.GetComponent<Graphic>();
            if (imageGraphic == null)
                Debug.LogWarning("PressAnyButton: Text object must have a Text, TMP, or Image component.");
        }

        // Optional image setup
        if (imageToHide != null)
        {
            imageGraphic = imageToHide.GetComponent<Graphic>();
            if (imageGraphic == null)
                Debug.LogWarning("PressAnyButton: Image object must have a Graphic component.");
        }

        // Hide video & next canvas at start
        if (videoCanvas != null)
            videoCanvas.SetActive(false);

        if (nextScreenCanvas != null)
            nextScreenCanvas.SetActive(false);

        // Hide fade-in image at start
        if (fadeInImage != null)
            fadeInImage.alpha = 0f;
    }

    void Start()
    {
        // Start FMOD music immediately on Loop A
        if (!musicEvent.IsNull)
        {
            musicInstance = RuntimeManager.CreateInstance(musicEvent);
            musicInstance.start();
            musicInstance.setParameterByName("Section", 0f);  // Loop A
            musicInstance.setParameterByName("MainMenu", 0f);
        }
    }

    void Update()
    {
        if (!hasPressed)
        {
            // Blink the text
            if (pressAnyButtonText != null)
            {
                float alpha = (Mathf.Sin(Time.time * blinkSpeed) * 0.5f) + 0.5f;
                var color = pressAnyButtonText.GetComponent<Graphic>().color;
                pressAnyButtonText.GetComponent<Graphic>().color = new Color(color.r, color.g, color.b, alpha);
            }

            // Detect any key
            if (Input.anyKeyDown)
                TriggerPress();
        }
    }

    private void TriggerPress()
    {
        hasPressed = true;

        if (pressAnyButtonText != null)
            pressAnyButtonText.SetActive(false);

        if (imageToHide != null)
            imageToHide.SetActive(false);

        // Ensure canvas is active so Prepare() works
        if (videoCanvas != null)
            videoCanvas.SetActive(true);

        // Hide video visually until prepared
        CanvasGroup cg = videoCanvas.GetComponent<CanvasGroup>();
        if (cg != null)
            cg.alpha = 0f;

        if (videoPlayer != null)
        {
            videoPlayer.Stop();
            videoPlayer.Prepare();
            videoPlayer.prepareCompleted += vp =>
            {
                // Show video now that it's ready
                if (cg != null)
                    cg.alpha = 1f;

                vp.Play();
            };

            videoPlayer.loopPointReached += OnVideoFinished;
        }

        // FMOD jump
        if (musicInstance.isValid())
        {
            musicInstance.setParameterByName("Section", 1f);
            musicInstance.setParameterByName("MainMenu", 1f);
        }

        if (!actionEvent.IsNull)
            RuntimeManager.PlayOneShot(actionEvent);
    }



    private void OnVideoFinished(VideoPlayer vp)
    {
        // Hide video canvas immediately
        if (videoCanvas != null)
            videoCanvas.SetActive(false);

        // Show next canvas
        if (nextScreenCanvas != null)
            nextScreenCanvas.SetActive(true);

        // Start fading in the image
        if (fadeInImage != null)
        {
            fadeInImage.alpha = 0f;
            StartCoroutine(FadeInImage(fadeInImage, fadeDuration));
        }
    }

    private IEnumerator FadeInImage(CanvasGroup cg, float duration)
    {
        float elapsed = 0f;
        while (elapsed < duration)
        {
            elapsed += Time.deltaTime;
            cg.alpha = Mathf.Clamp01(elapsed / duration);
            yield return null;
        }
        cg.alpha = 1f; // ensure fully visible at end
    }

    void OnDestroy()
    {
        if (musicInstance.isValid())
            musicInstance.release();
    }
    
    public void StopMusic()
    {
        if (musicInstance.isValid())
        {
            musicInstance.stop(FMOD.Studio.STOP_MODE.IMMEDIATE); // stop instantly
            musicInstance.release(); // free resources
        }
    }
}
