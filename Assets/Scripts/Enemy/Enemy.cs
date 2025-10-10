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

        // Only start wandering if agent is on a valid NavMesh
        if (agent != null && agent.isOnNavMesh)
        {
            Wander();
        }
        else
        {
            Debug.LogWarning($"{name} is not placed on a NavMesh at Start!");
        }
    }

    void Update()
    {
        // Skip logic if agent is missing or not on a valid NavMesh
        if (agent == null || !agent.isOnNavMesh)
            return;

        // Check remaining distance only if agent has an active path
        if (!agent.pathPending && agent.hasPath && agent.remainingDistance < 0.5f)
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

        Vector3 randomDirection = Random.insideUnitSphere * walkRadius;
        randomDirection += startPosition;

        if (NavMesh.SamplePosition(randomDirection, out NavMeshHit hit, walkRadius, NavMesh.AllAreas))
        {
            agent.SetDestination(hit.position);
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
        if (agent != null)
        {
            if (agent.isOnNavMesh)
                agent.isStopped = true;
        }

        if (deathParticle != null)
        {
            GameObject effect = Instantiate(deathParticle, transform.position, Quaternion.identity);
            Destroy(effect, 3f);
        }

        Destroy(gameObject, deathDestroyDelay);
    }
}
