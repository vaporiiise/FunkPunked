using UnityEngine;

[RequireComponent(typeof(Animator))]
public class EnemyAI : MonoBehaviour
{
    [Header("Target")]
    public Transform player;

    [Header("Patrol Points")]
    public Transform[] patrolPoints;
    private int currentPoint;

    [Header("Movement")]
    public float walkSpeed = 1.5f;
    public float runSpeed = 3.5f;
    public float rotationSpeed = 8f;

    [Header("Ranges")]
    public float detectionRange = 6f;
    public float attackRange = 2f;

    [Header("Attack")]
    public float attackCooldown = 2.5f;

    [Header("Idle At Points")]
    public float idleTimeAtPoint = 1.5f;
    private float idleTimer;

    private Animator animator;
    private float nextAttackTime;
    private bool isIdling;

    void Start()
    {
        animator = GetComponent<Animator>();

        // 1. Auto-assign the player if missing
        if (player == null)
        {
            GameObject playerObj = GameObject.FindGameObjectWithTag("Player");
            if (playerObj != null) player = playerObj.transform;
        }

        // 2. Auto-find and assign all patrol points
        GameObject[] points = GameObject.FindGameObjectsWithTag("Patrol Points");
    
        // Initialize the array size based on how many objects were found
        patrolPoints = new Transform[points.Length];

        for (int i = 0; i < points.Length; i++)
        {
            patrolPoints[i] = points[i].transform;
        }
    
        // Optional: Sort them by name or distance if order matters
        // System.Array.Sort(patrolPoints, (a, b) => string.Compare(a.name, b.name));
    }

    void Update()
    {
        float distance = Vector3.Distance(transform.position, player.position);

        // 1. If in attack range, stop moving and attack
        if (distance <= attackRange)
        {
            // Stop movement animations immediately
            animator.SetFloat("Speed", 0f);
            animator.SetBool("IsRunning", false);

            if (Time.time >= nextAttackTime)
            {
                Attack();
            }
            return; // Exit Update so we don't call ChasePlayer()
        }

        // 2. If close but not in attack range, chase
        if (distance <= detectionRange)
        {
            ChasePlayer();
        }
        else
        {
            Patrol();
        }
    }

    // ================= PATROL =================

    void Patrol()
    {
        if (patrolPoints.Length == 0) return;

        if (isIdling)
        {
            idleTimer -= Time.deltaTime;
            animator.SetFloat("Speed", 0f);

            if (idleTimer <= 0)
                isIdling = false;

            return;
        }

        Transform target = patrolPoints[currentPoint];
        MoveTowards(target.position, walkSpeed);

        animator.SetFloat("Speed", 0.5f);
        animator.SetBool("IsRunning", false);

        if (Vector3.Distance(transform.position, target.position) < 0.3f)
        {
            currentPoint = (currentPoint + 1) % patrolPoints.Length;
            isIdling = true;
            idleTimer = idleTimeAtPoint;
        }
    }

    // ================= CHASE =================

    void ChasePlayer()
    {
        MoveTowards(player.position, runSpeed);

        animator.SetFloat("Speed", 1f);
        animator.SetBool("IsRunning", true);
    }

    // ================= ATTACK =================

    void Attack()
    {
        nextAttackTime = Time.time + attackCooldown;

        animator.SetFloat("Speed", 0f);
        animator.SetBool("IsRunning", false);

        animator.SetTrigger("Attack");
    }

    // ================= CORE MOVEMENT =================

    void MoveTowards(Vector3 target, float speed)
    {
        Vector3 dir = (target - transform.position).normalized;
        dir.y = 0;

        if (dir.magnitude < 0.05f) return;

        transform.position += dir * speed * Time.deltaTime;

        Quaternion rot = Quaternion.LookRotation(dir);
        transform.rotation = Quaternion.Slerp(transform.rotation, rot, rotationSpeed * Time.deltaTime);
    }
}
