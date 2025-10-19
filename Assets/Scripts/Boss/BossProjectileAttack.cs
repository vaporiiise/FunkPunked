using UnityEngine;

public class BossProjectileAttack : MonoBehaviour
{
    public GameObject projectilePrefab;
    public Transform firePoint;
    public float projectileSpeed = 10f;

    public void FireProjectile(Vector3 targetPos)
    {
        if (!projectilePrefab || !firePoint) return;

        GameObject projectile = Instantiate(projectilePrefab, firePoint.position, Quaternion.identity);
        Vector3 dir = (targetPos - firePoint.position).normalized;
        Rigidbody rb = projectile.GetComponent<Rigidbody>();

        if (rb)
            rb.linearVelocity = dir * projectileSpeed;
    }
}