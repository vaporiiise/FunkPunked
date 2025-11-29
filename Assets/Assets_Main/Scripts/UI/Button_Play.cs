using UnityEngine;
using UnityEngine.UI;
using UnityEngine.Video;

public class Button_Play : MonoBehaviour
{
    [Header("Pre-roll")]
    public VideoPlayer preRollVideo;
    public RawImage preRollScreen;

    [Header("Main video")]
    public VideoPlayer mainVideo;
    public RawImage mainVideoScreen;

    [Header("Idle button")]
    public RawImage idleImage;
    public Button idleButton;
    
    [Header("Animator")]
    public Animator animator;


    void Start()
    {
        animator = GetComponent<Animator>();
        // Pre-roll video starts automatically
        preRollVideo.Play();
        preRollScreen.enabled = true;
        idleImage.enabled = false;
        mainVideoScreen.enabled = false;

        // Listen for pre-roll finished
        preRollVideo.loopPointReached += PreRollFinished;
    }

    void PreRollFinished(VideoPlayer vp)
    {
        // Hide pre-roll
        preRollScreen.enabled = false;

        // Show idle button
        idleImage.enabled = true;
        animator.SetTrigger("PlayEntry");
        idleButton.interactable = true;
        idleButton.onClick.AddListener(PlayMainVideo);
    }

    void PlayMainVideo()
    {
        // Hide idle image
        idleImage.enabled = false;

        // Show main video
        mainVideoScreen.enabled = true;
        mainVideo.Play();
    }
}