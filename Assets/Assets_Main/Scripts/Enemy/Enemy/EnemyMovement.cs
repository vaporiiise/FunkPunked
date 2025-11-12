using UnityEngine;
using UnityEngine.AI;

[RequireComponent(typeof(NavMeshAgent))]
[RequireComponent(typeof(EnemyCombat))]
public class EnemyMovement : MonoBehaviour
{
    [Header("Movement")]
    public float moveSpeed = 3.5f;
    public float attackRange = 3f; // Match EnemyCombat

    private NavMeshAgent agent;
    private EnemyAnimatorHandler animHandler;
    private EnemyCombat combat;
    private Transform player;
    private bool stopMovement = false; // For stagger/attack downtime

    private void Start()
    {
        agent = GetComponent<NavMeshAgent>();
        animHandler = GetComponentInChildren<EnemyAnimatorHandler>();
        combat = GetComponent<EnemyCombat>();

        if (player == null)
        {
            GameObject p = GameObject.FindGameObjectWithTag("Player");
            if (p != null) player = p.transform;
        }
    }

    private void Update()
    {
        if (!agent.isOnNavMesh || player == null) return;

        if (stopMovement)
        {
            agent.isStopped = true;
            animHandler?.SetMoveSpeed(0f);
            return;
        }

        float distance = Vector3.Distance(transform.position, player.position);

        if (distance <= attackRange)
        {
            // Stop moving and face player
            agent.isStopped = true;
            Vector3 lookDir = (player.position - transform.position).normalized;
            lookDir.y = 0f;
            if (lookDir != Vector3.zero)
                transform.rotation = Quaternion.LookRotation(lookDir);

            // Trigger attack if ready
            if (combat.CanAttack())
                combat.TriggerAttack();
        }
        else
        {
            agent.isStopped = false;
            agent.SetDestination(player.position);
        }

        // Update animation
        if (animHandler != null)
        {
            float speedPercent = agent.velocity.magnitude / agent.speed;
            animHandler.SetMoveSpeed(speedPercent);
        }
    }

    public void SetStopForAttack(bool stop)
    {
        stopMovement = stop;
        agent.isStopped = stop;
    }
    public void Initialize(Transform playerRef)
    {
        player = playerRef;
    }
}
