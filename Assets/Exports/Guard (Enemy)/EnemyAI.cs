using UnityEngine;

[RequireComponent(typeof(Animator), typeof(Rigidbody))]
public class EnemyAI : MonoBehaviour
{
    [Header("Detection & Combat")]
    public Transform player;
    public float detectionRange = 10f;
    public float attackRange = 2f;
    public float attackCooldown = 2.5f;

    [Header("Movement")]
    public float runSpeed = 3.5f;
    public float rotationSpeed = 8f;
    public float stopDistanceValue = 1f; // SET THIS TO 1 IN INSPECTOR

    [Header("Patrol & Row Logic")]
    public bool isLeader;
    public Transform targetToFollow; 
    public Transform[] patrolWaypoints;
    public float followDistance = 2f;
    private int waypointIndex;

    [Header("Animator Settings")]
    public string speedParam = "Speed"; 
    public float walkThreshold = 0.5f;
    public float idleThreshold = 0f;

    [Header("References")]
    [SerializeField] private GameObject attackHitbox;

    private Animator animator;
    private Rigidbody rb;
    private float nextAttackTime;
    private float physicsTimer = 0f;

    void Start()
    {
        animator = GetComponent<Animator>();
        rb = GetComponent<Rigidbody>();
        rb.isKinematic = true;
        if (player == null) FindPlayerInstance();
    }

    void Update()
    {
        if (animator.GetCurrentAnimatorStateInfo(0).IsName("Die"))
        {
            rb.isKinematic = true;
            animator.SetFloat(speedParam, 0);
            return;
        }

        if (physicsTimer > 0)
        {
            physicsTimer -= Time.deltaTime;
            if (physicsTimer <= 0) rb.isKinematic = true;
        }

        if (animator.GetCurrentAnimatorStateInfo(0).IsName("GotHit")) return;
        if (!rb.isKinematic) return;
        if (player == null) { FindPlayerInstance(); return; }

        float distanceToPlayer = Vector3.Distance(transform.position, player.position);

        if (distanceToPlayer <= attackRange)
        {
            StopMoving();
            if (Time.time >= nextAttackTime) Attack();
        }
        else if (distanceToPlayer <= detectionRange)
        {
            // STOP PUSHING PLAYER: Use stopDistanceValue
            MoveToTarget(player.position, stopDistanceValue);
        }
        else
        {
            if (isLeader)
            {
                if (patrolWaypoints.Length > 0)
                {
                    MoveToTarget(patrolWaypoints[waypointIndex].position, 0.2f);
                    if (Vector3.Distance(transform.position, patrolWaypoints[waypointIndex].position) < 0.6f)
                        waypointIndex = (waypointIndex + 1) % patrolWaypoints.Length;
                }
                else { StopMoving(); }
            }
            else if (targetToFollow != null)
            {
                // STOP PUSHING LEADER: Use followDistance (Set to 2 or 3)
                MoveToTarget(targetToFollow.position, followDistance);
            }
            else { StopMoving(); }
        }
    }

    void MoveToTarget(Vector3 targetPos, float stopDist)
    {
        float dist = Vector3.Distance(transform.position, targetPos);
        
        if (dist > stopDist)
        {
            Vector3 dir = (targetPos - transform.position).normalized;
            dir.y = 0;
            transform.position += dir * runSpeed * Time.deltaTime;
            transform.rotation = Quaternion.Slerp(transform.rotation, Quaternion.LookRotation(dir), rotationSpeed * Time.deltaTime);
            
            animator.SetFloat(speedParam, walkThreshold);
        }
        else 
        { 
            StopMoving(); 
        }
    }

    void StopMoving()
    {
        animator.SetFloat(speedParam, idleThreshold);
    }

    void Attack()
    {
        nextAttackTime = Time.time + attackCooldown;
        animator.SetTrigger("Attack");
        Vector3 dir = (player.position - transform.position).normalized;
        dir.y = 0;
        if (dir != Vector3.zero) transform.rotation = Quaternion.LookRotation(dir);
    }

    public void AddForceForward()
    {
        rb.isKinematic = false;
        rb.AddForce(-transform.forward * 5f, ForceMode.Impulse);
        physicsTimer = 0.2f;
    }

    void FindPlayerInstance()
    {
        GameObject p = GameObject.FindGameObjectWithTag("Player");
        if (p != null) player = p.transform;
    }

    public void AE_StartAttack() { if(attackHitbox) attackHitbox.SetActive(true); }
    public void AE_EndAttack() { if(attackHitbox) attackHitbox.SetActive(false); }
}