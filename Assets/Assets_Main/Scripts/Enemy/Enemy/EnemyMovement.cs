using UnityEngine;
using UnityEngine.AI;

[RequireComponent(typeof(NavMeshAgent))]
public class EnemyMovement : MonoBehaviour
{
    [Header("Movement")]
    public float moveSpeed = 3.5f;
    public float walkRadius = 6f;
    public float idleTime = 2f;

    private NavMeshAgent agent;
    private EnemyAnimatorHandler animHandler;
    private Transform player;
    private Vector3 startPosition;
    private float idleTimer;

    public void Initialize(Transform playerRef)
    {
        player = playerRef;
        startPosition = transform.position;
    }

    void Start()
    {
        agent = GetComponent<NavMeshAgent>();
        animHandler = GetComponentInChildren<EnemyAnimatorHandler>();

        if (!agent.isOnNavMesh)
        {
            if (NavMesh.SamplePosition(transform.position, out NavMeshHit hit, 2f, NavMesh.AllAreas))
                agent.Warp(hit.position);
        }

        agent.speed = moveSpeed;
        Wander();
    }

    void Update()
    {
        if (!agent.isOnNavMesh) return;

        if (!agent.pathPending && agent.remainingDistance <= agent.stoppingDistance)
        {
            idleTimer += Time.deltaTime;
            if (idleTimer >= idleTime)
            {
                Wander();
                idleTimer = 0f;
            }
        }

        if (animHandler != null)
        {
            float speedPercent = agent.velocity.magnitude / agent.speed;
            animHandler.SetMoveSpeed(speedPercent);
        }
    }

    public void StopMovement(bool stop) => agent.isStopped = stop;

    public void Wander()
    {
        Vector3 randomPos = startPosition + Random.insideUnitSphere * walkRadius;
        if (NavMesh.SamplePosition(randomPos, out NavMeshHit hit, walkRadius, NavMesh.AllAreas))
        {
            agent.SetDestination(hit.position);
            idleTime = Random.Range(1f, 3f);
        }
    }

    public float DistanceToPlayer()
    {
        if (player == null) return Mathf.Infinity;
        return Vector3.Distance(transform.position, player.position);
    }
}
