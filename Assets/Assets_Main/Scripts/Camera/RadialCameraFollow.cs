using UnityEngine;

public class RadialCameraFollow : MonoBehaviour
{
    [Header("References")]
    public Transform player;
    public Transform arenaCenter;  

    [Header("Camera Settings")]
    public float radius = 20f;     
    public float height = 10f;     
    public float followSmoothness = 5f;

    void LateUpdate()
    {
        if (!player || !arenaCenter) return;

        Vector3 dir = (player.position - arenaCenter.position).normalized;

        Vector3 desiredPos = arenaCenter.position + dir * radius + Vector3.up * height;

        transform.position = Vector3.Lerp(transform.position, desiredPos, followSmoothness * Time.deltaTime);

        transform.LookAt(player.position + Vector3.up * 1.5f);
    }
}