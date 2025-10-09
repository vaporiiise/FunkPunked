using UnityEngine;
using UnityEngine.UI;
using System.Collections.Generic;

public class BeatVisualizer : MonoBehaviour
{
    [Header("UI")]
    public RectTransform cursor;
    public RectTransform barArea;

    [Header("Beat Settings")]
    public float bpm = 120f;
    private float beatDuration;
    private float timer;

    private Vector3 leftPos;
    private Vector3 rightPos;

    private bool movingRight = true;

    private void Start()
    {
        beatDuration = 60f / bpm;

        float width = barArea.rect.width;
        leftPos = barArea.position + Vector3.left * (width / 2f);
        rightPos = barArea.position + Vector3.right * (width / 2f);

        BeatManager.OnBeat += OnBeat;
    }

    private void OnDestroy()
    {
        BeatManager.OnBeat -= OnBeat;
    }

    private void Update()
    {
        timer += Time.deltaTime;
        float t = Mathf.Clamp01(timer / beatDuration);

        if (movingRight)
            cursor.position = Vector3.Lerp(leftPos, rightPos, t);
        else
            cursor.position = Vector3.Lerp(rightPos, leftPos, t);
    }

    private void OnBeat(int beatIndex)
    {
        timer = 0f;
        movingRight = !movingRight; 
    }
}