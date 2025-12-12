using UnityEngine;
using UnityEngine.AI;
using System.Collections;

public class EnemyBeatAI : MonoBehaviour
{
    [Header("Movement")]
    public float wanderRadius = 5f;
    public float wanderInterval = 3f;
    public float chaseRange = 8f;
    public float attackRange = 2f;
    public Transform player;

    [Header("Combat")]
    public float strafeDistance = 1.5f;
    public float fallbackDistance = 2.5f;
    public float combatMoveInterval = 1.0f; // time between strafes/fallbacks

    [Header("References")]
    public NavMeshAgent agent;
    public Animator animator;
    public BeatScheduler beatScheduler;

    private float wanderTimer = 0f;
    private float combatMoveTimer = 0f;
    private bool isAttacking = false;

    private enum State { Wander, Chase, Combat }
    private State currentState = State.Wander;

    private void Start()
    {
        if (agent == null) agent = GetComponent<NavMeshAgent>();
        agent.stoppingDistance = attackRange + 0.5f; // buffer so enemy doesn't stick to player

        if (player == null)
            player = GameObject.FindWithTag("Player")?.transform;

        if (animator == null)
            animator = GetComponent<Animator>();
    }

    private void Update()
    {
        if (player == null) return;

        switch (currentState)
        {
            case State.Wander:
                UpdateWander();
                CheckChase();
                break;
            case State.Chase:
                UpdateChase();
                break;
            case State.Combat:
                UpdateCombat();
                break;
        }
    }

    // ----------------------------
    // WANDER
    // ----------------------------
    void UpdateWander()
    {
        wanderTimer += Time.deltaTime;
        if (wanderTimer >= wanderInterval)
        {
            Vector3 randomDir = Random.insideUnitSphere * wanderRadius + transform.position;
            NavMeshHit hit;
            if (NavMesh.SamplePosition(randomDir, out hit, wanderRadius, NavMesh.AllAreas))
            {
                agent.SetDestination(hit.position);
                wanderTimer = 0f;
            }
        }

        float speed = agent.velocity.magnitude / agent.speed;
        animator.SetFloat("Speed", speed);
        animator.SetFloat("StrafeDir", 0f);
    }

    void CheckChase()
    {
        float dist = Vector3.Distance(transform.position, player.position);
        if (dist <= chaseRange)
            currentState = State.Chase;
    }

    // ----------------------------
    // CHASE
    // ----------------------------
    void UpdateChase()
    {
        float dist = Vector3.Distance(transform.position, player.position);

        if (dist <= attackRange)
        {
            currentState = State.Combat;
            agent.ResetPath();
            animator.SetFloat("Speed", 0f);
            animator.SetFloat("StrafeDir", 0f);
            return;
        }

        agent.SetDestination(player.position);

        Vector3 localVel = transform.InverseTransformDirection(agent.velocity);
        animator.SetFloat("Speed", localVel.z / agent.speed);
        animator.SetFloat("StrafeDir", localVel.x / agent.speed);
    }

    // ----------------------------
    // COMBAT
    // ----------------------------
    void UpdateCombat()
    {
        float dist = Vector3.Distance(transform.position, player.position);
        if (dist > attackRange)
        {
            currentState = State.Chase;
            agent.isStopped = false;
            return;
        }

        // Face player
        Vector3 dir = (player.position - transform.position).normalized;
        dir.y = 0f;
        if (dir != Vector3.zero)
        {
            Quaternion rot = Quaternion.LookRotation(dir);
            transform.rotation = Quaternion.Slerp(transform.rotation, rot, Time.deltaTime * 5f);
        }

        // Handle strafing/fallback
        combatMoveTimer += Time.deltaTime;

        if (!isAttacking && combatMoveTimer >= combatMoveInterval)
        {
            Vector3 moveDir = Vector3.zero;
            float rand = Random.value;

            if (rand < 0.33f) moveDir = transform.right * strafeDistance;
            else if (rand < 0.66f) moveDir = -transform.right * strafeDistance;
            else moveDir = -transform.forward * fallbackDistance;

            NavMeshHit hit;
            if (NavMesh.SamplePosition(transform.position + moveDir, out hit, 1f, NavMesh.AllAreas))
                agent.SetDestination(hit.position);

            agent.isStopped = false;
            combatMoveTimer = 0f;
        }

        // Freeze agent while attacking
        if (isAttacking)
        {
            agent.isStopped = true;
            animator.SetFloat("Speed", 0f);
            animator.SetFloat("StrafeDir", 0f);
        }

        // Update animator based on current velocity
        Vector3 localVel = transform.InverseTransformDirection(agent.velocity);
        animator.SetFloat("Speed", localVel.z / agent.speed);
        animator.SetFloat("StrafeDir", localVel.x / agent.speed);

        // Trigger attack on beat
        if (!isAttacking && beatScheduler != null)
            StartCoroutine(AttackOnBeat());
    }

    // ----------------------------
    // ATTACK
    // ----------------------------
    IEnumerator AttackOnBeat()
    {
        isAttacking = true;
        agent.isStopped = true;
        animator.SetFloat("Speed", 0f);
        animator.SetFloat("StrafeDir", 0f);

        // Wait until next beat
        yield return new WaitForSeconds(beatScheduler.TimeToNextBeat());

        // Trigger attack animation
        animator.ResetTrigger("Attack");
        animator.SetTrigger("Attack");
        Debug.Log("Enemy Attack Triggered!"); // debug log

        // Wait for animation duration (adjust to your clip)
        yield return new WaitForSeconds(0.8f);

        isAttacking = false;
        agent.isStopped = false;
    }
}
