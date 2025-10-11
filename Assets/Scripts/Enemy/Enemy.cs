using UnityEngine;
using UnityEngine.AI;
using System.Collections;
using MoreMountains.Feedbacks;

[RequireComponent(typeof(NavMeshAgent))]
public class Enemy : MonoBehaviour
{
    [Header("Stats")]
    public float maxHealth = 20f;
    private float currentHealth;

    [Header("Combat")]
    public int damage = 10;
    public float attackRange = 2.5f;
    public float attackCooldown = 2f;
    public int warningBeatsBefore = 1; // how many beats before the attack to warn
    private bool isAttacking = false;
    private int lastBeatIndex = -1;
    private int attackBeatIndex = -1;
    private bool hasWarned = false;

    [Header("Movement")]
    public float moveSpeed = 3.5f;
    public float walkRadius = 6f;
    public float idleTime = 2f;
    private float idleTimer;
    private Vector3 startPosition;

    [Header("References")]
    public Transform player;
    private NavMeshAgent agent;
    private Animator animator;
    private EnemyHealthBar healthUI;
    public MMF_Player attackWarningFeedback;

    [Header("Death")]
    public GameObject deathParticle;
    public float deathDestroyDelay = 1.5f;

    private BeatScheduler beatScheduler;

    void Awake()
    {
        agent = GetComponent<NavMeshAgent>();
        animator = GetComponentInChildren<Animator>();
    }

    void Start()
    {
        currentHealth = maxHealth;
        startPosition = transform.position;

        if (player == null)
        {
            GameObject p = GameObject.FindGameObjectWithTag("Player");
            if (p != null) player = p.transform;
        }

        healthUI = GetComponentInChildren<EnemyHealthBar>();
        if (healthUI != null)
            healthUI.InitializeHealth((int)maxHealth);

        if (!agent.isOnNavMesh)
        {
            if (NavMesh.SamplePosition(transform.position, out NavMeshHit hit, 2f, NavMesh.AllAreas))
                agent.Warp(hit.position);
        }

        agent.speed = moveSpeed;
        agent.stoppingDistance = 1f;
        Wander();

        // Subscribe to BeatScheduler
        beatScheduler = FindObjectOfType<BeatScheduler>();
        if (beatScheduler != null)
            BeatScheduler.OnBeat += OnBeatReceived;
    }

    void OnDestroy()
    {
        if (beatScheduler != null)
            BeatScheduler.OnBeat -= OnBeatReceived;
    }

    void OnBeatReceived(int beatIndex)
    {
        // Update last beat
        lastBeatIndex = beatIndex;

        // Only attack if player is near and not already attacking
        if (player == null || isAttacking)
            return;

        float dist = Vector3.Distance(transform.position, player.position);
        if (dist > attackRange)
            return;

        // If no attack scheduled, set up attack timing
        if (attackBeatIndex < beatIndex)
        {
            attackBeatIndex = beatIndex + 1; // attack on next beat
            hasWarned = false;
            StartCoroutine(HandleBeatAttack(beatIndex));
        }
    }

    IEnumerator HandleBeatAttack(int currentBeat)
    {
        isAttacking = true;
        agent.isStopped = true;

        // Face the player
        if (player != null)
        {
            Vector3 lookDir = (player.position - transform.position).normalized;
            lookDir.y = 0;
            transform.rotation = Quaternion.LookRotation(lookDir);
        }

        // --- Warning on current beat ---
        if (!hasWarned)
        {
            Debug.Log($"⚠️ Enemy Warning on Beat {currentBeat}");
            attackWarningFeedback?.PlayFeedbacks();
            hasWarned = true;
        }

        // --- Wait until the next beat for attack ---
        yield return new WaitUntil(() => lastBeatIndex >= currentBeat + warningBeatsBefore);

        // --- Attack now ---
        if (animator != null)
            animator.SetTrigger("Attacking");

        Debug.Log($"💥 Enemy Attack on Beat {currentBeat + warningBeatsBefore}");

        // Damage player
        if (player != null)
        {
            PlayerStats ps = player.GetComponent<PlayerStats>();
            if (ps != null)
                ps.TakeDamage(damage);
        }

        // --- Cooldown before next attack ---
        yield return new WaitForSeconds(attackCooldown);
        isAttacking = false;
        agent.isStopped = false;
    }

    void Update()
    {
        if (agent == null || !agent.isOnNavMesh) return;

        // Idle wandering
        if (!isAttacking && !agent.pathPending && agent.remainingDistance <= agent.stoppingDistance)
        {
            idleTimer += Time.deltaTime;
            if (idleTimer >= idleTime)
            {
                Wander();
                idleTimer = 0f;
            }
        }

        if (animator != null)
            animator.SetBool("IsMoving", agent.velocity.sqrMagnitude > 0.01f);
    }

    void Wander()
    {
        Vector3 randomPos = startPosition + Random.insideUnitSphere * walkRadius;
        if (NavMesh.SamplePosition(randomPos, out NavMeshHit hit, walkRadius, NavMesh.AllAreas))
        {
            agent.SetDestination(hit.position);
            idleTime = Random.Range(1f, 3f);
        }
    }

    public void TakeDamage(float amount)
    {
        currentHealth -= amount;
        healthUI?.PlayDamageEffect();
        healthUI?.UpdateHealth((int)currentHealth);

        if (currentHealth <= 0)
            Die();
    }

    void Die()
    {
        if (agent != null) agent.isStopped = true;
        animator?.SetTrigger("Die");

        if (deathParticle != null)
        {
            GameObject fx = Instantiate(deathParticle, transform.position, Quaternion.identity);
            Destroy(fx, 3f);
        }

        Destroy(gameObject, deathDestroyDelay);
    }

    private void OnDrawGizmosSelected()
    {
        Gizmos.color = Color.yellow;
        Gizmos.DrawWireSphere(startPosition == Vector3.zero ? transform.position : startPosition, walkRadius);

        Gizmos.color = Color.red;
        Gizmos.DrawWireSphere(transform.position, attackRange);
    }
}
