using UnityEngine;
using UnityEngine.AI;

public class EnemyMovement : MonoBehaviour
{
    [Header("Movement")]
    public float moveSpeed = 3.5f;
    public float roamRadius = 8f;
    public float roamWait = 2f;

    [Header("Vision")]
    public float visionRange = 12f;
    public float visionAngle = 120f;

    public float attackRange = 2f;

    private Transform player;
    private NavMeshAgent agent;
    private EnemyAnimatorHandler animator;
    private float roamTimer;

    public void Initialize(Transform target)
    {
        player = target;
    }

    void Start()
    {
        agent = GetComponent<NavMeshAgent>();
        animator = GetComponentInChildren<EnemyAnimatorHandler>();

        agent.speed = moveSpeed;
    }

    void Update()
    {
        // Update MoveSpeed for animations
        if (animator != null)
            animator.SetMoveSpeed(agent.velocity.magnitude);
    }

    // --------------------

    public void Roam()
    {
        if (!agent.hasPath)
            PickRoamPoint();

        roamTimer += Time.deltaTime;

        if (roamTimer >= roamWait)
        {
            roamTimer = 0;
            PickRoamPoint();
        }
    }

    void PickRoamPoint()
    {
        Vector3 rnd = Random.insideUnitSphere * roamRadius + transform.position;

        if (NavMesh.SamplePosition(rnd, out NavMeshHit hit, roamRadius, NavMesh.AllAreas))
            agent.SetDestination(hit.position);
    }

    public void Chase()
    {
        agent.SetDestination(player.position);
    }

    // --------------------

    public bool CanSeePlayer()
    {
        Vector3 dir = (player.position - transform.position).normalized;

        if (Vector3.Distance(transform.position, player.position) > visionRange)
            return false;

        if (Vector3.Angle(transform.forward, dir) > visionAngle * 0.5f)
            return false;

        if (Physics.Raycast(transform.position + Vector3.up, dir, out RaycastHit hit, visionRange))
            return hit.transform.CompareTag("Player");

        return false;
    }

    public bool IsInAttackRange()
    {
        return Vector3.Distance(transform.position, player.position) <= attackRange;
    }

    public void StopInstant()
    {
        agent.isStopped = true;
        agent.velocity = Vector3.zero;
    }

    public void Resume()
    {
        agent.isStopped = false;
    }

    // Gizmos
    void OnDrawGizmosSelected()
    {
        // --- Vision Range ---
        Gizmos.color = new Color(1f, 1f, 0f, 0.25f); // yellow transparent
        Gizmos.DrawSphere(transform.position, visionRange);

        // --- Vision Angle Lines ---
        Vector3 origin = transform.position + Vector3.up * 1f;

        Vector3 left = Quaternion.Euler(0, -visionAngle * 0.5f, 0) * transform.forward;
        Vector3 right = Quaternion.Euler(0, visionAngle * 0.5f, 0) * transform.forward;

        Gizmos.color = Color.blue;
        Gizmos.DrawLine(origin, origin + left * visionRange);
        Gizmos.DrawLine(origin, origin + right * visionRange);

        // --- Vision Arc (draws a curved arc showing the exact FOV band) ---
        Gizmos.color = Color.cyan;
        DrawArc(origin, visionRange, visionAngle);

        // --- Forward Direction ---
        Gizmos.color = Color.green;
        Gizmos.DrawLine(origin, origin + transform.forward * 3f);

        // --- Attack Range ---
        Gizmos.color = new Color(1f, 0f, 0f, 0.3f); // red transparent
        Gizmos.DrawWireSphere(transform.position, attackRange);
    }

    /// <summary>
    /// Draw a nice FOV arc circle
    /// </summary>
    void DrawArc(Vector3 origin, float radius, float angle)
    {
        int segments = 40;
        float startAngle = -angle * 0.5f;
        float step = angle / segments;

        Vector3 previousPoint = origin + (Quaternion.Euler(0, startAngle, 0) * transform.forward) * radius;

        for (int i = 1; i <= segments; i++)
        {
            float current = startAngle + i * step;
            Vector3 nextPoint = origin + (Quaternion.Euler(0, current, 0) * transform.forward) * radius;

            Gizmos.DrawLine(previousPoint, nextPoint);
            previousPoint = nextPoint;
        }
    }
}
