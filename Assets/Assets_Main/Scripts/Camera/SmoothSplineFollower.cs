using UnityEngine;
using Unity.Cinemachine;
using UnityEngine.Splines;
using Unity.Mathematics;

[RequireComponent(typeof(CinemachineDollyCart))]
public class SmoothSplineFollower : MonoBehaviour
{
    [Header("References")]
    public CinemachineDollyCart cart;
    public SplineContainer spline;
    public Transform target;

    [Header("Smoothing")]
    public float smoothTime = 0.1f;

    private float velocity = 0f;

    private void Reset()
    {
        cart = GetComponent<CinemachineDollyCart>();
    }

    private void Update()
    {
        if (cart == null || spline == null || target == null) return;

        // Convert target.position to float3
        float3 targetPos = target.position;

        // 1️⃣ Get nearest point and t
        SplineUtility.GetNearestPoint(
            spline.Spline,
            targetPos,
            out float3 nearestPoint,
            out float nearestT,
            8,  // iteration count
            8   // sample count
        );

        // 2️⃣ Convert t to distance along spline
        float splineLength = spline.Spline.GetLength();
        float targetDistance = nearestT * splineLength;

        // 3️⃣ Smoothly move DollyCart
        cart.m_Position = Mathf.SmoothDamp(cart.m_Position, targetDistance, ref velocity, smoothTime);
    }
}