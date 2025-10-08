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
   // public EnemyHealthBar healthBar;
    private NavMeshAgent agent;
    private Vector3 startPosition;
    private float idleTimer;

    [Header("Death Effect")]
    public GameObject deathParticle; 
    public float deathDestroyDelay = 1.5f; 

    void Start()
    {
        currentHealth = maxHealth;
        startPosition = transform.position;
        agent = GetComponent<NavMeshAgent>();

       //if (healthBar != null)
           // healthBar.SetMaxHealth(maxHealth);

        Wander();
    }

    void Update()
    {
        if (!agent.pathPending && agent.remainingDistance < 0.5f)
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
        Vector3 randomDirection = Random.insideUnitSphere * walkRadius;
        randomDirection += startPosition;

        if (NavMesh.SamplePosition(randomDirection, out NavMeshHit hit, walkRadius, 1))
        {
            agent.SetDestination(hit.position);
        }
    }

    public void TakeDamage(float amount)
    {
        currentHealth -= amount;
       // if (healthBar != null)
          //  healthBar.SetHealth(currentHealth);

        if (currentHealth <= 0)
        {
            Die();
        }
    }

    void Die()
    {
        if (agent != null) agent.isStopped = true;

        if (deathParticle != null)
        {
            GameObject effect = Instantiate(deathParticle, transform.position, Quaternion.identity);
            Destroy(effect, 3f); 
        }

      //  if (healthBar != null)
         //   Destroy(healthBar.gameObject);

        Destroy(gameObject, deathDestroyDelay);
    }
}
