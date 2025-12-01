using UnityEngine;
using TMPro;
using UnityEngine.UI;
using System.Collections;
using FMODUnity;

public class BossIntroController : MonoBehaviour
{
    [Header("UI References")]
    public TextMeshProUGUI[] bossTexts;       // TMP texts to type sequentially
    public Image overlayImage;                 // black overlay panel
    public CanvasGroup guiCanvas1;             // first GUI CanvasGroup
    public CanvasGroup guiCanvas2;             // second GUI CanvasGroup

    [Header("Enemies")]
    public GameObject[] enemies;               // enemies to enable after intro

    [Header("Timing")]
    public float typingSpeed = 0.02f;         // fast typing per character
    public float popDuration = 0.2f;          // pop animation duration
    public float textScaleAmount = 1.2f;      // pop scale
    public float overlayFadeDuration = 1.5f;  // overlay fade duration

    [Header("Special Delay")]
    public float delayBetween2And3 = 0.5f;     // custom delay between 2nd & 3rd text

    [Header("FMOD")]
    public EventReference bossMusicEvent;

    private FMOD.Studio.EventInstance musicInstance;

    void Start()
    {
        // Initialize overlay with alpha = 200/255
        if (overlayImage != null)
            overlayImage.color = new Color(0, 0, 0, 230f / 255f);

        // Initialize GUI Canvases
        if (guiCanvas1 != null) guiCanvas1.alpha = 0f;
        if (guiCanvas2 != null) guiCanvas2.alpha = 0f;

        // Initialize TMP texts
        foreach (var t in bossTexts)
        {
            t.alpha = 0f;
            t.transform.localScale = Vector3.one;
            t.text = t.text.Trim(); // preserve original text
        }

        // Disable enemies at start
        foreach (var e in enemies)
            if (e != null)
                e.SetActive(false);

        StartCoroutine(PlayIntro());
    }

    IEnumerator PlayIntro()
    {
        // --- Play FMOD music ---
        musicInstance = RuntimeManager.CreateInstance(bossMusicEvent);
        musicInstance.start();

        // --- Type all TMP texts one by one quickly ---
        for (int i = 0; i < bossTexts.Length; i++)
        {
            yield return StartCoroutine(TypeText(bossTexts[i]));

            // Apply custom delay only between 2nd (index 1) and 3rd (index 2) text
            if (i == 1 && delayBetween2And3 > 0f)
                yield return new WaitForSeconds(delayBetween2And3);
        }

        // --- Enable enemies right before final fade ---
        foreach (var e in enemies)
            if (e != null)
                e.SetActive(true);

        // --- Fade overlay out and GUI Canvases in ---
        float t = 0f;
        Color overlayStart = overlayImage.color;
        Color overlayEnd = new Color(overlayStart.r, overlayStart.g, overlayStart.b, 0f);

        while (t < overlayFadeDuration)
        {
            t += Time.deltaTime;
            float alpha = t / overlayFadeDuration;

            // Fade overlay
            if (overlayImage != null)
                overlayImage.color = Color.Lerp(overlayStart, overlayEnd, alpha);

            // Fade GUI Canvases
            if (guiCanvas1 != null) guiCanvas1.alpha = Mathf.Lerp(0f, 1f, alpha);
            if (guiCanvas2 != null) guiCanvas2.alpha = Mathf.Lerp(0f, 1f, alpha);

            // Fade TMP texts along with overlay
            foreach (var tmpText in bossTexts)
            {
                tmpText.alpha = Mathf.Lerp(1f, 0f, alpha);
            }

            yield return null;
        }

        // Ensure final alpha values
        if (overlayImage != null) overlayImage.color = overlayEnd;
        if (guiCanvas1 != null) guiCanvas1.alpha = 1f;
        if (guiCanvas2 != null) guiCanvas2.alpha = 1f;
        foreach (var tmpText in bossTexts)
            tmpText.alpha = 0f;
    }

    IEnumerator TypeText(TextMeshProUGUI tmp)
    {
        string fullText = tmp.text;
        tmp.text = "";
        tmp.alpha = 1f;

        // --- Pop scale animation ---
        float tScale = 0f;
        Vector3 startScale = Vector3.one;
        Vector3 targetScale = Vector3.one * textScaleAmount;
        while (tScale < popDuration)
        {
            tScale += Time.deltaTime;
            tmp.transform.localScale = Vector3.Lerp(startScale, targetScale, tScale / popDuration);
            yield return null;
        }
        tmp.transform.localScale = Vector3.one;

        // --- Typing effect ---
        for (int i = 0; i < fullText.Length; i++)
        {
            tmp.text += fullText[i];
            yield return new WaitForSeconds(typingSpeed);
        }
    }

    void OnDestroy()
    {
        if (musicInstance.isValid())
        {
            musicInstance.stop(FMOD.Studio.STOP_MODE.IMMEDIATE);
            musicInstance.release();
        }
    }
}
