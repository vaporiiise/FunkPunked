using UnityEngine;
using Unity.Cinemachine;

public class SmoothDollyFollower : MonoBehaviour
{
    public CinemachineDollyCart dollyCart;
    public Transform player;
    public float followSpeed = 5f;

    private float velocity;

    void Update()
    {
        if (player == null || dollyCart == null || dollyCart.m_Path == null) return;

        float trackLength = dollyCart.m_Path.PathLength;
        float closestPos = 0f;
        float minDist = float.MaxValue;

        int steps = 100;
        for (int i = 0; i <= steps; i++)
        {
            float t = (i / (float)steps) * trackLength;
            Vector3 point = dollyCart.m_Path.EvaluatePositionAtUnit(t, CinemachinePathBase.PositionUnits.Distance);
            float dist = Vector3.Distance(player.position, point);
            if (dist < minDist)
            {
                minDist = dist;
                closestPos = t;
            }
        }

        // Smoothly move the cart along the track
        dollyCart.m_Position = Mathf.SmoothDamp(dollyCart.m_Position, closestPos, ref velocity, 1f / followSpeed);
    }
}