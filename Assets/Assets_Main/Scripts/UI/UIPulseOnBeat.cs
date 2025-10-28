using UnityEngine;
using UnityEngine.UI;
using System.Collections;

public class UIPulseOnBeat : MonoBehaviour
{
    [Header("Target UI Element")]
    public Image targetImage;

    [Header("Pulse Settings")]
    [Tooltip("How large the image grows on each beat")]
    public float pulseScale = 1.25f;

    [Tooltip("How long the pulse 'pop' lasts before returning to normal")]
    public float pulseDuration = 0.15f;

    [Tooltip("How quickly it returns to the base state")]
    public float fadeSpeed = 6f;

    [Tooltip("Optional flash color on beat")]
    public Color pulseColor = Color.white;

    private Vector3 originalScale;
    private Color originalColor;
    private Coroutine pulseRoutine;

    private void Start()
    {
        if (targetImage == null)
            targetImage = GetComponent<Image>();

        originalScale = targetImage.rectTransform.localScale;
        originalColor = targetImage.color;

        // Subscribe to BeatScheduler instead of FMOD
        BeatScheduler.OnBeat += HandleBeat;
    }

    private void OnDestroy()
    {
        BeatScheduler.OnBeat -= HandleBeat;
    }

    private void HandleBeat(int beatIndex)
    {
        if (pulseRoutine != null)
            StopCoroutine(pulseRoutine);

        pulseRoutine = StartCoroutine(PulseEffect());
    }

    private IEnumerator PulseEffect()
    {
        float t = 0f;

        // Grow & flash
        while (t < pulseDuration)
        {
            t += Time.deltaTime;
            float lerp = t / pulseDuration;

            targetImage.rectTransform.localScale = Vector3.Lerp(originalScale, originalScale * pulseScale, lerp);
            targetImage.color = Color.Lerp(originalColor, pulseColor, lerp);
            yield return null;
        }

        // Smoothly return
        while (Vector3.Distance(targetImage.rectTransform.localScale, originalScale) > 0.001f)
        {
            targetImage.rectTransform.localScale = Vector3.Lerp(targetImage.rectTransform.localScale, originalScale, Time.deltaTime * fadeSpeed);
            targetImage.color = Color.Lerp(targetImage.color, originalColor, Time.deltaTime * fadeSpeed);
            yield return null;
        }

        targetImage.rectTransform.localScale = originalScale;
        targetImage.color = originalColor;
    }
}
