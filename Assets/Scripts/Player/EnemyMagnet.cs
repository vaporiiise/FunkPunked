using UnityEngine;

public class EnemyMagnet : MonoBehaviour
{
    [Header("Magnet Settings")]
    public float detectionRadius = 8f;      // How far player can detect enemies
    public float magnetSpeed = 7f;          // How fast player moves toward enemy
    public float faceSpeed = 10f;           // How fast player rotates toward enemy
    public float minAttackRange = 2f;       // Stop moving when close enough
    public LayerMask enemyLayer;            // Enemy layer

    private Transform targetEnemy;
    private bool isLockingOn;

    void Update()
    {
        // Detect closest enemy every frame
        DetectClosestEnemy();

        // Check for attack input
        if (Input.GetMouseButtonDown(0)) // Left click = attack
        {
            if (targetEnemy != null)
            {
                isLockingOn = true;
            }
        }

        // Move toward target only during attack lock
        if (isLockingOn && targetEnemy != null)
        {
            FaceTarget();
            MoveTowardTarget();

            // stop if close enough
            float dist = Vector3.Distance(transform.position, targetEnemy.position);
            if (dist <= minAttackRange + 0.1f)
                isLockingOn = false;
        }
    }

    void DetectClosestEnemy()
    {
        Collider[] hits = Physics.OverlapSphere(transform.position, detectionRadius, enemyLayer);
        float closestDist = Mathf.Infinity;
        Transform closestEnemy = null;

        foreach (var hit in hits)
        {
            float dist = Vector3.Distance(transform.position, hit.transform.position);
            if (dist < closestDist)
            {
                closestDist = dist;
                closestEnemy = hit.transform;
            }
        }

        targetEnemy = closestEnemy;
    }

    void FaceTarget()
    {
        Vector3 direction = (targetEnemy.position - transform.position).normalized;
        direction.y = 0;
        if (direction.sqrMagnitude > 0.01f)
        {
            Quaternion targetRot = Quaternion.LookRotation(direction);
            transform.rotation = Quaternion.Lerp(transform.rotation, targetRot, Time.deltaTime * faceSpeed);
        }
    }

    void MoveTowardTarget()
    {
        Vector3 moveDir = (targetEnemy.position - transform.position).normalized;
        Vector3 targetPos = targetEnemy.position - moveDir * minAttackRange;

        transform.position = Vector3.MoveTowards(
            transform.position,
            targetPos,
            Time.deltaTime * magnetSpeed
        );
    }

    void OnDrawGizmosSelected()
    {
        Gizmos.color = new Color(1f, 0.8f, 0f, 0.25f);
        Gizmos.DrawSphere(transform.position, detectionRadius);

        Gizmos.color = new Color(1f, 0f, 0f, 0.3f);
        Gizmos.DrawSphere(transform.position, minAttackRange);

        if (targetEnemy != null)
        {
            Gizmos.color = Color.cyan;
            Gizmos.DrawLine(transform.position, targetEnemy.position);
            Gizmos.DrawWireSphere(targetEnemy.position, 0.4f);
        }
    }
}
