using UnityEngine;
using UnityEngine.AI;
using System.Collections;
using MoreMountains.Feedbacks;

public class Enemy : MonoBehaviour
{
    [Header("Feedbacks")]
    public MMF_Player attackWarningFeedback;

    [Header("Stats")]
    public float maxHealth = 20f;
    private float currentHealth;

    [Header("Movement")]
    public float walkRadius = 5f;
    public float idleTime = 2f;
    public float attackRange = 2f;

    [Header("Combat")]
    public float attackDelay = 0.5f; // Delay after warning before hitting
    public float parryStunDuration = 2f;
    public int damage = 10;
    private bool stunned = false;
    private bool isAttacking = false;

    [Header("References")]
    private NavMeshAgent agent;
    private Vector3 startPosition;
    private float idleTimer;
    private EnemyHealthBar healthUI;
    public Transform player;
    public Animator animator;

    [Header("Death Effect")]
    public GameObject deathParticle;
    public float deathDestroyDelay = 1.5f;

    void Start()
    {
        currentHealth = maxHealth;
        healthUI = GetComponentInChildren<EnemyHealthBar>();
        if (healthUI != null)
            healthUI.InitializeHealth((int)maxHealth);

        agent = GetComponent<NavMeshAgent>();
        startPosition = transform.position;

        // Warp to NavMesh if not on it
        if (agent != null && !agent.isOnNavMesh)
        {
            if (NavMesh.SamplePosition(transform.position, out NavMeshHit hit, 2f, NavMesh.AllAreas))
                agent.Warp(hit.position);
        }

        if (agent != null && agent.isOnNavMesh)
        {
            agent.stoppingDistance = 1f;
            Wander();
        }
    }

    void Update()
    {
        if (agent == null || !agent.isOnNavMesh || stunned || isAttacking)
            return;

        // Player in range? Trigger attack
        if (player != null)
        {
            float dist = Vector3.Distance(transform.position, player.position);
            if (dist <= attackRange)
            {
                StartCoroutine(AttackRoutine());
            }
        }

        // Wander if idle
        if (!agent.pathPending && agent.remainingDistance <= agent.stoppingDistance)
        {
            idleTimer += Time.deltaTime;
            if (idleTimer >= idleTime)
            {
                Wander();
                idleTimer = 0f;
            }
        }
    }

    void Wander()
    {
        if (agent == null || !agent.isOnNavMesh)
            return;

        Vector3 randomDirection = Random.insideUnitSphere * walkRadius + startPosition;
        if (NavMesh.SamplePosition(randomDirection, out NavMeshHit hit, walkRadius, NavMesh.AllAreas))
        {
            agent.SetDestination(hit.position);
            idleTime = Random.Range(1f, 3f);
            Debug.Log($"{name} wandering to {hit.position}");
        }
    }

    IEnumerator AttackRoutine()
    {
        if (isAttacking || stunned)
            yield break;

        isAttacking = true;

        // Stop movement
        agent.isStopped = true;

        // Play MMF attack warning
        if (attackWarningFeedback != null)
            attackWarningFeedback.PlayFeedbacks();

        // Wait before actual attack
        yield return new WaitForSeconds(attackDelay);

        // Trigger attack animation
        if (animator != null)
            animator.SetTrigger("Attacking");

        // Deal damage to player
        if (player != null)
        {
            PlayerStats ps = player.GetComponent<PlayerStats>();
            if (ps != null)
                ps.TakeDamage(damage);
        }

        // Optional: wait a bit after attack before moving again
        yield return new WaitForSeconds(0.2f);

        agent.isStopped = false;
        isAttacking = false;
    }

    public void TakeDamage(float amount)
    {
        currentHealth -= amount;

        if (healthUI != null)
        {
            healthUI.PlayDamageEffect();
            healthUI.UpdateHealth((int)currentHealth);
        }

        if (currentHealth <= 0)
            Die();
    }

    public void Stun(float duration)
    {
        if (!stunned)
            StartCoroutine(StunRoutine(duration));
    }

    private IEnumerator StunRoutine(float duration)
    {
        stunned = true;
        isAttacking = false;

        if (agent != null && agent.isOnNavMesh)
            agent.isStopped = true;

        // Play stunned animation or effect
        if (animator != null)
            animator.SetTrigger("Stunned");

        Debug.Log($"{name} is stunned for {duration}s!");
        yield return new WaitForSeconds(duration);

        if (agent != null && agent.isOnNavMesh)
            agent.isStopped = false;

        stunned = false;
    }

    void Die()
    {
        if (agent != null && agent.isOnNavMesh)
            agent.isStopped = true;

        if (deathParticle != null)
        {
            GameObject effect = Instantiate(deathParticle, transform.position, Quaternion.identity);
            Destroy(effect, 3f);
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
