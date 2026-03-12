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
    public float attackRotationSpeed = 20f;

    [Header("Ranges")]
    public Transform player;
    public float attackRange = 2.5f;
    public float strafeRange = 8f;
    public float runThreshold = 12f;

    [Header("Combat Weights")]
    public float normalAttackChance = 70f; 
    public float attackCooldown = 1.5f;
    [Range(0, 1)] public float retreatChance = 0.3f;

    private BossState _currentState = BossState.Idle;
    private BossAnimationHandler _animHandler;
    private Rigidbody _rb;
    
    private bool _isActionLocked = false;
    private bool _isTracking = false; 
    private float _nextAttackTime;
    private Coroutine _activeRoutine;

    void Awake()
    {
        _rb = GetComponent<Rigidbody>();
        _animHandler = GetComponent<BossAnimationHandler>();
        if (_rb) _rb.isKinematic = true; 
    }

    void Start() { if (player == null) FindPlayer(); }

    void Update()
    {
        if (player == null) return;

        if (_isTracking) LookAtPlayer(attackRotationSpeed);
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

    private IEnumerator StrafeRoutine()
    {
        _currentState = BossState.Strafing;
        float timer = Random.Range(2f, 4f);
        int side = (Random.value > 0.5f) ? 1 : -1;

        while (timer > 0)
        {
            if (_isActionLocked || player == null) yield break;

            Vector3 dirToPlayer = (player.position - transform.position).normalized;
            Vector3 sideDir = Vector3.Cross(Vector3.up, dirToPlayer).normalized * side;
            
            ApplyMovement(sideDir, strafeSpeed);
            LookAtPlayer(rotationSpeed);

            timer -= Time.deltaTime;
            if (Vector3.Distance(transform.position, player.position) <= attackRange) break;
            yield return null;
        }
        _currentState = BossState.Idle;
        _activeRoutine = null;
    }

    private void StartAttack()
    {
        _isActionLocked = true;
        _isTracking = true; 
        if (_animHandler) _animHandler.ResetMovement();

        // Weighted Selection: 70% chance for Index 2 (Normal Attack)
        int attackIndex = (Random.Range(0f, 100f) <= normalAttackChance) ? 2 : Random.Range(0, 2);

        if (_animHandler) _animHandler.TriggerSpecificAttack(attackIndex);
        _nextAttackTime = Time.time + attackCooldown;
    }

    public void EnterStagger(float duration)
    {
        // Kill any active Strafe or Chase logic immediately
        if (_activeRoutine != null) StopCoroutine(_activeRoutine);
        StopAllCoroutines(); 

        StartCoroutine(StaggerTimer(duration));
    }

    private IEnumerator StaggerTimer(float d)
    {
        _isActionLocked = true;
        _isTracking = false;
        _currentState = BossState.Staggered;
        
        if (_animHandler) 
        {
            _animHandler.ResetMovement();
            _animHandler.TriggerHit(2); // Play Stagger Loop
        }

        yield return new WaitForSeconds(d);
        OnAnimationActionComplete();
    }

    public void OnAnimationActionComplete()
    {
        _isActionLocked = false;
        _isTracking = false;
        ReturnRB(); 
        if (_animHandler) _animHandler.EndStagger();
        _currentState = BossState.Idle;
    }

    private void ApplyMovement(Vector3 dir, float speed)
    {
        transform.position += dir * speed * Time.deltaTime;
        if (_currentState == BossState.Chasing && dir != Vector3.zero)
            transform.rotation = Quaternion.Slerp(transform.rotation, Quaternion.LookRotation(dir), rotationSpeed * Time.deltaTime);

        if (_animHandler)
        {
            Vector3 localDir = transform.InverseTransformDirection(dir);
            _animHandler.UpdateMovement(localDir, speed > walkSpeed, _currentState);
        }
    }

    private void LookAtPlayer(float speed)
    {
        if (player == null) return;
        Vector3 dir = (player.position - transform.position).normalized;
        dir.y = 0;
        if (dir != Vector3.zero)
            transform.rotation = Quaternion.Slerp(transform.rotation, Quaternion.LookRotation(dir), speed * Time.deltaTime);
    }

    private void StartSpecialRoutine(IEnumerator routine)
    {
        if (_activeRoutine != null) StopCoroutine(_activeRoutine);
        _activeRoutine = StartCoroutine(routine);
    }

    private void FindPlayer() { GameObject p = GameObject.FindGameObjectWithTag("Player"); if (p) player = p.transform; }

    // --- PHYSICS HELPERS ---
    public void AddForceBackwards() { rbForce(-transform.forward * 50f); }
    public void AddForceBackwardsPlus() { rbForce(-transform.forward * 100f); }
    public void AddForceForwardATK1() { rbForce(transform.forward * 500f); }
    public void AddForceForward() { rbForce(transform.forward * 100f); }

    private void rbForce(Vector3 force)
    {
        if (_rb == null) return;
        _rb.isKinematic = false;
        _rb.AddForce(force, ForceMode.Impulse);
    }

    public void ReturnRB() 
    {
        if (_rb == null) return;
        _rb.linearVelocity = Vector3.zero;
        _rb.isKinematic = true; 
    }

    public void AE_StopTracking() => _isTracking = false;
}