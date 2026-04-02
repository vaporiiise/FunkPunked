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

    [Header("Physics Burst Settings")]
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
        // 1. THE DEATH LOCK
        // If the animator is in the "Die" state, we force the AI to stay still forever.
        if (animator.GetCurrentAnimatorStateInfo(0).IsName("Die"))
        {
            StopMoving();
            rb.isKinematic = true; // Lock physics
            rb.linearVelocity = Vector3.zero; // Kill any remaining slide
            return; // EXIT Update: No chasing, no rotating, no attacking
        }

        HandlePhysicsTimer();

        // 2. STUN LOCK
        // If flinching from a hit, stop AI but allow physics to finish the push
        if (animator.GetCurrentAnimatorStateInfo(0).IsName("GotHit"))
        {
            StopMoving();
            return;
        }

        if (!rb.isKinematic) return;

        if (player == null) { FindPlayerInstance(); return; }

        // 3. NORMAL AI LOGIC
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
            if (physicsTimer <= 0) LockPhysics();
        }
    }

    public void AddForceForward()
    {
        rb.isKinematic = false;
        rb.AddForce(-transform.forward * 5f, ForceMode.Impulse);
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
        animator.SetBool("IsRunning", true);
    }

    void StopMoving() => animator.SetBool("IsRunning", false);

    void Attack()
    {
        nextAttackTime = Time.time + attackCooldown;
        animator.SetTrigger("Attack");
        
        Vector3 dir = (player.position - transform.position).normalized;
        dir.y = 0;
        if (dir != Vector3.zero) transform.rotation = Quaternion.LookRotation(dir);
    }

    void FindPlayerInstance()
    {
        GameObject p = GameObject.FindGameObjectWithTag("Player");
        if (p != null) player = p.transform;
    }

    public void AE_StartAttack() { if(attackHitbox) attackHitbox.SetActive(true); }
    public void AE_EndAttack() { if(attackHitbox) attackHitbox.SetActive(false); }
}