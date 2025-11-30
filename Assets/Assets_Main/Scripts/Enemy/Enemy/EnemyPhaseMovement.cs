using UnityEngine;
using UnityEngine.AI;

public class EnemyPhaseMovement : MonoBehaviour
{
    [Header("Phase Retreat Settings")]
    public float retreatDistance = 4f; // how far enemy jumps back
    public float retreatSpeed = 10f;   // speed of backward jump
    public float retreatDuration = 0.4f;

    private EnemyHealth health;
    private EnemyMovement movement;
    private NavMeshAgent agent;
    private Transform player;

    private bool triggered75 = false;
    private bool triggered50 = false;
    private bool triggered25 = false;

    void Start()
    {
        health = GetComponent<EnemyHealth>();
        movement = GetComponent<EnemyMovement>();
        agent = GetComponent<NavMeshAgent>();
        player = GameObject.FindGameObjectWithTag("Player").transform;
    }

    void Update()
    {
        float percent = health.currentHealth / health.maxHealth;

        if (!triggered75 && percent <= 0.75f)
        {
            triggered75 = true;
            DoRetreat();
        }
        if (!triggered50 && percent <= 0.50f)
        {
            triggered50 = true;
            DoRetreat();
        }
        if (!triggered25 && percent <= 0.25f)
        {
            triggered25 = true;
            DoRetreat();
        }
    }

    void DoRetreat()
    {
        if (player == null) return;
        StopAllCoroutines();
        StartCoroutine(RetreatRoutine());
    }

    System.Collections.IEnumerator RetreatRoutine()
    {
        agent.isStopped = true;

        // Direction away from the player
        Vector3 dir = (transform.position - player.position).normalized;

        Vector3 targetPos = transform.position + dir * retreatDistance;

        float t = 0;
        Vector3 start = transform.position;

        // Smooth backward jump
        while (t < 1f)
        {
            t += Time.deltaTime / retreatDuration;
            agent.transform.position = Vector3.Lerp(start, targetPos, t);
            yield return null;
        }

        // Resume normal movement
        agent.isStopped = false;
        
        Enemy enemy = GetComponent<Enemy>();
        if (enemy != null)
            enemy.ForceCircleState();

    }
}
