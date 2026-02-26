using UnityEngine;
using System.Collections;

public class UIShake : MonoBehaviour
{
    public static UIShake Instance { get; private set; }

    private RectTransform _hudGroup;
    private Vector2 _originalAnchoredPos;
    private Coroutine _activeShake;

    void Awake()
    {
        Instance = this;
        
        // Try to get the RectTransform
        _hudGroup = GetComponent<RectTransform>();

        // Check if it exists before accessing it to prevent the error
        if (_hudGroup != null)
        {
            _originalAnchoredPos = _hudGroup.anchoredPosition;
        }
        else
        {
            Debug.LogError($"UIShake error: No RectTransform found on {gameObject.name}. " +
                           "Is this object part of the UI (Canvas)?");
        }
    }

    public void Shake(float duration, float magnitude)
    {
        if (_hudGroup == null) return; // Don't shake if we don't have a RectTransform

        if (_activeShake != null) StopCoroutine(_activeShake);
        _activeShake = StartCoroutine(ShakeRoutine(duration, magnitude));
    }

    private IEnumerator ShakeRoutine(float duration, float magnitude)
    {
        float elapsed = 0f;

        while (elapsed < duration)
        {
            float x = Random.Range(-1f, 1f) * magnitude;
            float y = Random.Range(-1f, 1f) * magnitude;

            _hudGroup.anchoredPosition = _originalAnchoredPos + new Vector2(x, y);

            elapsed += Time.deltaTime;
            yield return null;
        }

        _hudGroup.anchoredPosition = _originalAnchoredPos;
        _activeShake = null;
    }
}