using UnityEngine;

public class BeatCircle : MonoBehaviour
{
    private RectTransform rect;
    private Vector3 startPos;
    private Vector3 endPos;
    private float travelTime;
    private float elapsed;

    public void Init(RectTransform rect, Vector3 start, Vector3 end, float time)
    {
        this.rect = rect;
        startPos = start;
        endPos = end;
        travelTime = time;
        elapsed = 0f;
    }

    private void Update()
    {
        elapsed += Time.deltaTime;
        float t = elapsed / travelTime;

        rect.position = Vector3.Lerp(startPos, endPos, t);

        if (t >= 1f)
        {
            Destroy(gameObject); // remove after reaching hit zone
        }
    }
}