using UnityEngine;

[RequireComponent(typeof(Animator), typeof(Rigidbody))]
public class EnemyAI : MonoBehaviour
{
    [Header("Detection & Combat")]
    public Transform player;
    public float detectionRange = 10f;
    public float attackRange = 2f;
    public float attackCooldown = 2.5f;
    [SerializeField] private LayerMask playerLayer;

    [Header("Movement")]
    public float runSpeed = 3.5f;
    public float rotationSpeed = 8f;

    [Header("Physics Burst Settings")]
    [Tooltip("How long the enemy stays non-kinematic after a push")]
    public float physicsUnlockDuration = 0.2f; 
    private float physicsTimer = 0f;

    [Header("References")]
    [SerializeField] private GameObject attackHitbox;

    private Animator animator;
    private Rigidbody rb;
    private float nextAttackTime;

    void Start()
    {
        animator = GetComponent<Animator>();
        rb = GetComponent<Rigidbody>();
        
        LockPhysics();

        if (player == null) FindPlayerInstance();
    }

    void Update()
    {
        HandlePhysicsTimer();

        if (!rb.isKinematic) return;

        if (player == null) { FindPlayerInstance(); return; }

        AnimatorStateInfo state = animator.GetCurrentAnimatorStateInfo(0);
        if (state.IsName("Attack") || state.IsName("GotParried")) return;

        float distance = Vector3.Distance(transform.position, player.position);

        if (distance <= attackRange)
        {
            StopMoving();
            if (Time.time >= nextAttackTime) Attack();
        }
        else if (distance <= detectionRange)
        {
            ChasePlayer();
        }
        else
        {
            StopMoving();
        }
    }

    private void HandlePhysicsTimer()
    {
        if (physicsTimer > 0)
        {
            physicsTimer -= Time.deltaTime;

            if (physicsTimer <= 0)
            {
                LockPhysics();
            }
        }
    }

    public void AddForceForward()
    {
        rb.isKinematic = false;
        
        rb.AddForce(transform.forward * 100f, ForceMode.Impulse);
        
        physicsTimer = physicsUnlockDuration;
    }

    private void LockPhysics()
    {
        rb.isKinematic = true;
        

        rb.linearVelocity = Vector3.zero;
        rb.angularVelocity = Vector3.zero;
    }

    void ChasePlayer()
    {
        Vector3 dir = (player.position - transform.position).normalized;
        dir.y = 0;
        
        if (dir != Vector3.zero)
        {
            transform.position += dir * runSpeed * Time.deltaTime;
            transform.rotation = Quaternion.Slerp(transform.rotation, Quaternion.LookRotation(dir), rotationSpeed * Time.deltaTime);
        }
        
        animator.SetFloat("Speed", 1f);
        animator.SetBool("IsRunning", true);
    }

    void StopMoving()
    {
        animator.SetFloat("Speed", 0f);
        animator.SetBool("IsRunning", false);
    }

    void Attack()
    {
        nextAttackTime = Time.time + attackCooldown;
        animator.SetTrigger("Attack");
        
        Vector3 dir = (player.position - transform.position).normalized;
        dir.y = 0;
        if (dir != Vector3.zero)
        {
            transform.rotation = Quaternion.Slerp(transform.rotation, Quaternion.LookRotation(dir), rotationSpeed * Time.deltaTime);
        }
    }

    void FindPlayerInstance()
    {
        GameObject playerObj = GameObject.FindGameObjectWithTag("Player");
        if (playerObj != null) player = playerObj.transform;
    }

    // Animation Event Methods
    public void AE_StartAttack() { if(attackHitbox) attackHitbox.SetActive(true); }
    public void AE_EndAttack() { if(attackHitbox) attackHitbox.SetActive(false); }
}