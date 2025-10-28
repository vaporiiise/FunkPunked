using UnityEngine;
using UnityEngine.UI;
using System.Collections;

public class BeatImageBop : MonoBehaviour
{
    [Header("Settings")]
    public Image targetImage;               // Assign your UI Image here
    public float bopScale = 1.2f;           // How big the bop gets
    public float bopDuration = 0.15f;       // How fast the bop happens
    public AnimationCurve bopCurve;         // Optional smooth animation curve

    private Vector3 originalScale;
    private Coroutine bopRoutine;

    void OnEnable()
    {
        BeatScheduler.OnBeat += HandleBeat;
    }

    void OnDisable()
    {
        BeatScheduler.OnBeat -= HandleBeat;
    }

    void Start()
    {
        if (targetImage == null)
            targetImage = GetComponent<Image>();

        originalScale = targetImage.transform.localScale;

        if (bopCurve == null || bopCurve.length == 0)
        {
            bopCurve = AnimationCurve.EaseInOut(0, 0, 1, 1);
        }
    }

    private void HandleBeat(int beatCount)
    {
        if (bopRoutine != null)
            StopCoroutine(bopRoutine);

        bopRoutine = StartCoroutine(Bop());
    }

    private IEnumerator Bop()
    {
        float t = 0f;

        // Scale up
        while (t < bopDuration)
        {
            t += Time.deltaTime;
            float normalized = bopCurve.Evaluate(t / bopDuration);
            float scale = Mathf.Lerp(1f, bopScale, normalized);
            targetImage.transform.localScale = originalScale * scale;
            yield return null;
        }

        // Scale back down smoothly
        t = 0f;
        while (t < bopDuration)
        {
            t += Time.deltaTime;
            float normalized = bopCurve.Evaluate(t / bopDuration);
            float scale = Mathf.Lerp(bopScale, 1f, normalized);
            targetImage.transform.localScale = originalScale * scale;
            yield return null;
        }

        targetImage.transform.localScale = originalScale;
    }
}