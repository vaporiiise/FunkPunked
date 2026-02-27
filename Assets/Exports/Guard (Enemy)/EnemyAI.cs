using UnityEngine;

[RequireComponent(typeof(Animator))]
public class EnemyAI : MonoBehaviour
{
    [Header("Detection & Combat")]
    public Transform player;
    public float detectionRange = 10f;
    public float attackRange = 2f;
    public float attackCooldown = 2.5f;
    [SerializeField] private LayerMask playerLayer;

    [Header("Movement")]
    public float walkSpeed = 1.5f;
    public float runSpeed = 3.5f;
    public float rotationSpeed = 8f;

    [Header("References")]
    [SerializeField] private GameObject attackHitbox;
    [SerializeField] private GameObject goldenFlashVFX;

    private Animator animator;
    private Rigidbody rb;
    private float nextAttackTime;
    private bool _isParryable;

    void Start()
    {
        animator = GetComponent<Animator>();
        rb = GetComponent<Rigidbody>();
        
        player = null; 
        
        if (attackHitbox) attackHitbox.SetActive(false);
        
        animator.Rebind();
        animator.Update(0f);
    }

    void Update()
    {
        if (player == null)
        {
            FindPlayerInstance();
            return;
        }

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

    void FindPlayerInstance()
    {
        GameObject playerObj = GameObject.FindGameObjectWithTag("Player");
        if (playerObj != null)
        {
            player = playerObj.transform;
        }
    }

    void Attack()
    {
        nextAttackTime = Time.time + attackCooldown;
        animator.SetTrigger("Attack");
        
        Vector3 dir = (player.position - transform.position).normalized;
        dir.y = 0;
        if (dir != Vector3.zero)
        {
            transform.rotation = Quaternion.LookRotation(dir);
        }
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

    public void AE_StartAttack() 
    { 
        _isParryable = true; 
        if(attackHitbox) attackHitbox.SetActive(true); 
    }

    public void AE_EndAttack() 
    { 
        _isParryable = false; 
        if(attackHitbox) attackHitbox.SetActive(false); 
    }

    private void OnTriggerEnter(Collider other)
    {
        if (((1 << other.gameObject.layer) & playerLayer) != 0)
        {
            if (other.TryGetComponent(out PlayerHealth ph))
            {
                ph.TakeDamage(15f);
            }
        }
    }
}