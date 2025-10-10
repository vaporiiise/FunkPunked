using UnityEngine;
using UnityEngine.AI;

public class Enemy : MonoBehaviour
{
    [Header("Stats")]
    public float maxHealth = 5f;
    private float currentHealth;

    [Header("Movement")]
    public float walkRadius = 5f;
    public float idleTime = 2f;

    [Header("References")]
    private NavMeshAgent agent;
    private Vector3 startPosition;
    private float idleTimer;

    [Header("Death Effect")]
    public GameObject deathParticle;
    public float deathDestroyDelay = 1.5f;
    private EnemyHealthBar healthUI;

    void Start()
    {
        currentHealth = maxHealth;
        healthUI = GetComponentInChildren<EnemyHealthBar>();
        if (healthUI != null)
            healthUI.InitializeHealth((int)maxHealth);

        agent = GetComponent<NavMeshAgent>();
        startPosition = transform.position;

        // Try warping onto NavMesh if not already
        if (agent != null && !agent.isOnNavMesh)
        {
            if (NavMesh.SamplePosition(transform.position, out NavMeshHit hit, 2f, NavMesh.AllAreas))
            {
                agent.Warp(hit.position);
                Debug.Log($"{name} warped to NavMesh at {hit.position}");
            }
            else
            {
                Debug.LogWarning($"{name} could not find NavMesh nearby!");
            }
        }

        if (agent != null && agent.isOnNavMesh)
        {
            agent.stoppingDistance = 1f; // keeps small space from player
            Wander();
        }
    }

    void Update()
    {
        if (agent == null || !agent.isOnNavMesh)
            return;

        // Check when the agent has reached its destination
        if (!agent.pathPending && agent.remainingDistance <= agent.stoppingDistance)
        {
            // Agent arrived
            if (!agent.hasPath || agent.velocity.sqrMagnitude < 0.01f)
            {
                idleTimer += Time.deltaTime;
                if (idleTimer >= idleTime)
                {
                    Wander();
                    idleTimer = 0f;
                }
            }
        }
    }

    void Wander()
    {
        if (agent == null || !agent.isOnNavMesh)
            return;

        Vector3 randomDirection = Random.insideUnitSphere * walkRadius;
        randomDirection += startPosition;

        if (NavMesh.SamplePosition(randomDirection, out NavMeshHit hit, walkRadius, NavMesh.AllAreas))
        {
            agent.SetDestination(hit.position);
            idleTime = Random.Range(1f, 3f); // random idle variation
        }
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
        {
            Die();
        }
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
    }
}
