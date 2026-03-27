using UnityEngine;

public class CircularBoundary : MonoBehaviour
{
    public Transform centerPoint; 
    public float arenaRadius = 10f;
    public Color gizmoColor = Color.red; 

    void LateUpdate()
    {
        if (centerPoint == null) return;

        Vector3 offset = transform.position - centerPoint.position;
        offset.y = 0; 

        if (offset.magnitude > arenaRadius)
        {
            Vector3 boundaryPoint = centerPoint.position + (offset.normalized * arenaRadius);
            boundaryPoint.y = transform.position.y;
            transform.position = boundaryPoint;
        }
    }

    private void OnDrawGizmos()
    {
        if (centerPoint == null) return;

        Gizmos.color = gizmoColor;


        DrawWireDisk(centerPoint.position, arenaRadius);
    }

    private void DrawWireDisk(Vector3 center, float radius)
    {
        float angleStep = 10f; 
        Vector3 prevPoint = center + new Vector3(radius, 0, 0);

        for (float i = angleStep; i <= 360f; i += angleStep)
        {
            float rad = i * Mathf.Deg2Rad;
            Vector3 nextPoint = center + new Vector3(Mathf.Cos(rad) * radius, 0, Mathf.Sin(rad) * radius);
            Gizmos.DrawLine(prevPoint, nextPoint);
            prevPoint = nextPoint;
        }
    }
}