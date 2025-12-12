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

    [Header("Circling")]
    public float circleSpeed = 2f;
    public float circleDistance = 3f;
    public float circleDirectionSwitch = 2f;
    private float circleTimer;
    private int circleDirection = 1;

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
        if (animator != null)
            animator.SetMoveSpeed(agent.velocity.magnitude);
    }

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

    public bool IsInAttackRange() => Vector3.Distance(transform.position, player.position) <= attackRange;

    public void StopInstant()
    {
        agent.isStopped = true;
        agent.velocity = Vector3.zero;
    }

    public void Resume()
    {
        agent.isStopped = false;
    }

    public void CirclePlayer(Transform player)
    {
        if (player == null) return;

        Vector3 lookDir = (player.position - transform.position);
        lookDir.y = 0;
        if (lookDir != Vector3.zero)
            transform.rotation = Quaternion.Slerp(transform.rotation,
                                                  Quaternion.LookRotation(lookDir),
                                                  Time.deltaTime * 6f);

        float dist = Vector3.Distance(transform.position, player.position);
        Vector3 offset = Vector3.zero;

        if (dist < circleDistance * 0.8f) offset += -lookDir.normalized;
        else if (dist > circleDistance * 1.2f) offset += lookDir.normalized;

        Vector3 side = Vector3.Cross(lookDir.normalized, Vector3.up);
        offset += side * circleDirection;
        offset = offset.normalized;

        agent.isStopped = false;
        agent.speed = circleSpeed;
        agent.SetDestination(transform.position + offset);

        circleTimer += Time.deltaTime;
        if (circleTimer >= circleDirectionSwitch)
        {
            circleTimer = 0;
            circleDirection *= -1;
        }
    }

    public void MoveTo(Vector3 pos)
    {
        agent.isStopped = false;
        agent.speed = moveSpeed;
        agent.SetDestination(pos);
    }
}
