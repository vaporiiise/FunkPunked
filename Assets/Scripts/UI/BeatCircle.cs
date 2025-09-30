using UnityEngine;

public class BeatCircle : MonoBehaviour
{
    private RectTransform rect;
    private Vector3 startPos;
    private Vector3 hitPos;
    private Vector3 endPos;
    private float travelTime;
    private float elapsed;

    public void Init(RectTransform rect, Vector3 start, Vector3 hit, float time)
    {
        this.rect = rect;
        startPos = start;
        hitPos = hit;
        travelTime = time;
        elapsed = 0f;

        // Go 200 px past the hit zone
        Vector3 direction = (hit - start).normalized;
        endPos = hit + direction * 200f;
    }

    private void Update()
    {
        elapsed += Time.deltaTime;

        if (elapsed <= travelTime)
        {
            // Moving start → hit zone
            rect.position = Vector3.Lerp(startPos, hitPos, elapsed / travelTime);
        }
        else if (elapsed <= travelTime * 1.5f) // overshoot for half a beat
        {
            float t = (elapsed - travelTime) / (travelTime * 0.5f);
            rect.position = Vector3.Lerp(hitPos, endPos, t);
        }
        else
        {
            Destroy(gameObject);
        }
    }
}