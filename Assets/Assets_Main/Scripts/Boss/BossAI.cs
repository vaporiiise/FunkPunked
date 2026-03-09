using UnityEngine;
using System.Collections;

[RequireComponent(typeof(Rigidbody))]
public class BossAI : MonoBehaviour
{
    public enum BossState { Idle, Chasing, Strafing, Attacking, Retreating, Staggered }

    [Header("Speeds")]
    public float walkSpeed = 2.5f;
    public float runSpeed = 6.5f;
    public float strafeSpeed = 5f;
    public float rotationSpeed = 10f;
    public float attackRotationSpeed = 20f; // Snappy rotation during wind-up

    [Header("Ranges")]
    public Transform player;
    public float attackRange = 2.5f;
    public float strafeRange = 8f;
    public float runThreshold = 12f;

    [Header("Combat")]
    public float attackCooldown = 2f;
    [Range(0, 1)] public float retreatChance = 0.4f;

    private BossState _currentState = BossState.Idle;
    private BossAnimationHandler _animHandler;
    private Rigidbody _rb;
    
    private bool _isActionLocked = false;
    private bool _isTracking = false; // Controls "Aiming" at player
    private float _nextAttackTime;
    private Coroutine _activeRoutine;

    void Awake()
    {
        _animHandler = GetComponent<BossAnimationHandler>();
        _rb = GetComponent<Rigidbody>();
        // Ensure Rigidbody starts in a safe state for scripted movement
        _rb.isKinematic = true; 
    }

    void Start()
    {
        if (player == null) FindPlayer();
    }

    void Update()
    {
        if (player == null) { FindPlayer(); return; }

        // --- ATTACK TRACKING (AIMING) ---
        // This allows the boss to rotate toward the player even if feet aren't moving
        if (_isTracking)
        {
            LookAtPlayer(attackRotationSpeed);
        }

        if (_isActionLocked) return;

        LogicTick();
    }

    private void LogicTick()
    {
        float distance = Vector3.Distance(transform.position, player.position);

        switch (_currentState)
        {
            case BossState.Idle:
                if (distance > strafeRange) 
                    _currentState = BossState.Chasing;
                else if (distance <= attackRange && Time.time >= _nextAttackTime) 
                    StartAttack();
                else if (distance <= strafeRange) 
                    StartSpecialRoutine(StrafeRoutine());
                break;

            case BossState.Chasing:
                if (distance <= strafeRange) { _currentState = BossState.Idle; return; }
                float speed = (distance > runThreshold) ? runSpeed : walkSpeed;
                ApplyMovement((player.position - transform.position).normalized, speed);
                break;
        }
    }

    private void ApplyMovement(Vector3 dir, float speed)
    {
        // Move the transform
        transform.position += dir * speed * Time.deltaTime;
        
        // Rotate toward movement direction (only when chasing)
        if (_currentState == BossState.Chasing)
        {
            Quaternion targetRot = Quaternion.LookRotation(dir);
            transform.rotation = Quaternion.Slerp(transform.rotation, targetRot, rotationSpeed * Time.deltaTime);
        }

        // Send binary data to Animation Handler
        Vector3 localDir = transform.InverseTransformDirection(dir);
        _animHandler.UpdateMovement(localDir, speed > walkSpeed, _currentState);
    }

    private void LookAtPlayer(float speed)
    {
        Vector3 dir = (player.position - transform.position).normalized;
        dir.y = 0; // Prevent boss from tilting up/down
        if (dir != Vector3.zero)
        {
            Quaternion targetRot = Quaternion.LookRotation(dir);
            transform.rotation = Quaternion.Slerp(transform.rotation, targetRot, speed * Time.deltaTime);
        }
    }

    // --- STATE METHODS ---

    private IEnumerator StrafeRoutine()
    {
        _currentState = BossState.Strafing;
        float timer = Random.Range(2f, 4f);
        int side = Random.value > 0.5f ? 1 : -1;

        while (timer > 0)
        {
            Vector3 dirToPlayer = (player.position - transform.position).normalized;
            Vector3 sideDir = Vector3.Cross(Vector3.up, dirToPlayer).normalized * side;
            
            ApplyMovement(sideDir, strafeSpeed);
            LookAtPlayer(rotationSpeed); // Face player while circling

            timer -= Time.deltaTime;
            if (Vector3.Distance(transform.position, player.position) <= attackRange) break;
            yield return null;
        }
        _currentState = BossState.Idle;
    }

    private void StartAttack()
    {
        _isActionLocked = true;
        _isTracking = true; // Start aiming at player
        _animHandler.ResetMovement();
        _animHandler.TriggerRandomAttack();
        _nextAttackTime = Time.time + attackCooldown;
    }

    public void EnterStagger(float duration) => StartCoroutine(StaggerTimer(duration));

    private IEnumerator StaggerTimer(float d)
    {
        _isActionLocked = true;
        _isTracking = false;
        _currentState = BossState.Staggered;
        _animHandler.ResetMovement();
        yield return new WaitForSeconds(d);
        OnAnimationActionComplete();
    }

    // --- ANIMATION EVENTS & CALLBACKS ---

    public void AE_StopTracking() => _isTracking = false;

    public void OnAnimationActionComplete()
    {
        _isActionLocked = false;
        _isTracking = false;
        ReturnRB(); // Ensure physics is disabled
        _animHandler.EndStagger();
        _currentState = BossState.Idle;
    }

    // --- RIGIDBODY FORCES ---

    public void AddForceBackwards() { rbForce(-transform.forward * 50f); }
    public void AddForceBackwardsPlus() { rbForce(-transform.forward * 100f); }
    public void AddForceForwardATK1() { rbForce(transform.forward * 500f); }

    private void rbForce(Vector3 force)
    {
        _rb.isKinematic = false;
        _rb.AddForce(force, ForceMode.Impulse);
    }

    public void ReturnRB() => _rb.isKinematic = true;

    private void StartSpecialRoutine(IEnumerator routine)
    {
        if (_activeRoutine != null) StopCoroutine(_activeRoutine);
        _activeRoutine = StartCoroutine(routine);
    }

    private void FindPlayer() 
    { 
        GameObject p = GameObject.FindGameObjectWithTag("Player"); 
        if (p) player = p.transform; 
    }
}