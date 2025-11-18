using UnityEngine;
using UnityEngine.AI;

public class EnemyMovement : MonoBehaviour
{
    public enum State
    {
        Roam,
        Chase,
        AttackPause
    }

    [Header("Movement Settings")]
    public float moveSpeed = 3.5f;
    public float attackRange = 2.5f;

    [Header("Vision Settings")]
    public float visionRange = 10f;
    public float visionAngle = 120f;

    [Header("Roaming Settings")]
    public float roamRadius = 8f;
    public float roamWaitTime = 3f;

    private NavMeshAgent agent;
    private EnemyCombat combat;
    private EnemyAnimatorHandler animHandler;
    private Transform player;

    private State currentState;
    private float roamTimer = 0f;
    private float attackPauseTimer = 0f;

    void Start()
    {
        agent = GetComponent<NavMeshAgent>();
        combat = GetComponent<EnemyCombat>();
        animHandler = GetComponentInChildren<EnemyAnimatorHandler>();

        agent.speed = moveSpeed;

        if (player == null)
        {
            GameObject p = GameObject.FindGameObjectWithTag("Player");
            if (p != null) player = p.transform;
        }

        currentState = State.Roam;
        PickNewRoamPoint();
    }

    void Update()
    {
        if (player == null || !agent.isOnNavMesh) return;

        switch (currentState)
        {
            case State.Roam: UpdateRoam(); break;
            case State.Chase: UpdateChase(); break;
            case State.AttackPause: UpdateAttackPause(); break;
        }

        UpdateAnimation();
    }

    // -----------------------
    //   ROAMING
    // -----------------------
    void UpdateRoam()
    {
        if (CanSeePlayer())
        {
            currentState = State.Chase;
            return;
        }

        if (!agent.pathPending && agent.remainingDistance <= 0.5f)
        {
            roamTimer += Time.deltaTime;
            if (roamTimer >= roamWaitTime)
            {
                roamTimer = 0f;
                PickNewRoamPoint();
            }
        }
    }

    void PickNewRoamPoint()
    {
        Vector3 randomDir = Random.insideUnitSphere * roamRadius + transform.position;
        if (NavMesh.SamplePosition(randomDir, out NavMeshHit hit, roamRadius, NavMesh.AllAreas))
        {
            agent.SetDestination(hit.position);
        }
    }

    // -----------------------
    //   CHASE PLAYER
    // -----------------------
    void UpdateChase()
    {
        if (!CanSeePlayer())
        {
            currentState = State.Roam;
            PickNewRoamPoint();
            return;
        }

        float dist = Vector3.Distance(transform.position, player.position);
        if (dist <= attackRange)
        {
            FacePlayer();

            if (combat.CanAttack())
                combat.TriggerAttack();

            attackPauseTimer = 0.5f;
            agent.isStopped = true;
            currentState = State.AttackPause;
            return;
        }

        agent.isStopped = false;
        agent.SetDestination(player.position);
    }

    void UpdateAttackPause()
    {
        attackPauseTimer -= Time.deltaTime;

        if (attackPauseTimer <= 0f)
        {
            agent.isStopped = false;
            currentState = CanSeePlayer() ? State.Chase : State.Roam;
        }
    }

    // -----------------------
    //   VISION
    // -----------------------
    public bool CanSeePlayer()
    {
        if (player == null) return false;

        float dist = Vector3.Distance(transform.position, player.position);
        if (dist > visionRange) return false;

        Vector3 dir = (player.position - transform.position).normalized;
        float angle = Vector3.Angle(transform.forward, dir);
        if (angle > visionAngle * 0.5f) return false;

        // Line of sight
        if (Physics.Raycast(transform.position + Vector3.up, dir, out RaycastHit hit, visionRange))
            return hit.transform.CompareTag("Player");

        return false;
    }

    // -----------------------
    //   HELPERS
    // -----------------------
    void FacePlayer()
    {
        Vector3 dir = player.position - transform.position;
        dir.y = 0;
        Quaternion targetRot = Quaternion.LookRotation(dir);
        transform.rotation = Quaternion.Slerp(transform.rotation, targetRot, 10f * Time.deltaTime);
    }

    void UpdateAnimation()
    {
        if (animHandler == null) return;
        float speedPercent = agent.velocity.magnitude / agent.speed;
        animHandler.SetMoveSpeed(speedPercent);
    }

    public void SetStopForAttack(bool stop)
    {
        agent.isStopped = stop;
        if (stop) agent.velocity = Vector3.zero;
    }

    public void Initialize(Transform target)
    {
        player = target;
    }

    // Draw vision in editor
    void OnDrawGizmosSelected()
    {
        Gizmos.color = Color.yellow;
        Gizmos.DrawWireSphere(transform.position, visionRange);

        Vector3 leftDir = Quaternion.Euler(0, -visionAngle / 2, 0) * transform.forward;
        Vector3 rightDir = Quaternion.Euler(0, visionAngle / 2, 0) * transform.forward;
        Gizmos.color = Color.blue;
        Gizmos.DrawLine(transform.position, transform.position + leftDir * visionRange);
        Gizmos.DrawLine(transform.position, transform.position + rightDir * visionRange);
    }
}
