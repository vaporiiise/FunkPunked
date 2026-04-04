using UnityEngine;
using System.Collections;

[RequireComponent(typeof(Rigidbody))]
public class BossAI : MonoBehaviour
{
    public enum BossState { Idle, Chasing, Attacking, Staggered, Cooldown }
    
    [Header("Current Status")]
    [SerializeField] private BossState _currentState = BossState.Idle;

    [Header("Movement")]
    public float walkSpeed = 5.0f; 
    public float rotationSpeed = 25f; 
    public float strafeSpeed = 4.0f;
    
    [Header("Jump Reset Settings")]
    public int hitsToTriggerReset = 6;
    private int _currentHitCount = 0;
    private int _targetHitCount;
    private bool _isJumping = false;

    [Header("Arena Boundary")]
    public Transform arenaCenter;
    public float arenaRadius = 15f;
    public Color gizmoColor = Color.red;

    [Header("Combat Ranges")]
    public Transform player;
    public float closeAttackRange = 4.5f; 
    public float dashAttackRange = 15.0f;  

    [Header("Cooldown & Stagger")]
    public float postAttackRest = 1.2f;    
    public float staggerGlobalCooldown = 30.0f;
    private float _cooldownTimer = 0f;
    private float _nextAvailableStaggerTime = 0f;
    private float _strafeTimer = 0f;
    private int _strafeDir = 1;

    [Header("Attack Logic")]
    private int _normalAttackCount = 0;
    private int _requiredNormalsBeforeDash;
    
    [Header("VFX Settings")]
    public ParticleSystem bodyVFX; 
    public Transform handTransform;

    private bool _isActionLocked = false; 
    private bool _isTracking = true;

    private BossAnimationHandler _animHandler;
    private Rigidbody _rb;
    private EnemyAttack _enemyAttack;
    private float _attackSafetyTimer = 0f; 

    public bool IsStaggered => _currentState == BossState.Staggered;

    void Awake() {
        _rb = GetComponent<Rigidbody>();
        _animHandler = GetComponent<BossAnimationHandler>();
        _enemyAttack = GetComponentInChildren<EnemyAttack>(); 
    
        if (_animHandler == null) _animHandler = GetComponentInChildren<BossAnimationHandler>();

        if (_rb) _rb.isKinematic = true;
    
        _targetHitCount = Random.Range(6, 9); 
        _requiredNormalsBeforeDash = Random.Range(3, 7);
    }

    void Update() {
        if (player == null || _currentState == BossState.Staggered) return;

        HandleSafetyTimer();

        if (_isTracking) LookAtPlayer(rotationSpeed);

        if (_isActionLocked) {
            if (_animHandler) _animHandler.ResetMovement();
            ConstrainToArena();
            return;
        }

        float dist = Vector3.Distance(transform.position, player.position);

        if (_cooldownTimer > 0) {
            _cooldownTimer -= Time.deltaTime;
            ExecuteStrafeBehavior(dist);
            ConstrainToArena();
            return;
        }

        if (dist <= closeAttackRange) {
            _normalAttackCount++;
            int attackIndex = (Random.value > 0.5f) ? 2 : 3; 
    
            ExecuteAttack(attackIndex); 
            
            return;
        }

        if (dist >= 8.0f && dist <= dashAttackRange) {
            bool readyToDash = _normalAttackCount >= _requiredNormalsBeforeDash;
            bool randomChance = Random.value > 0.7f; 

            if (readyToDash || randomChance) {
                _normalAttackCount = 0;
                _requiredNormalsBeforeDash = Random.Range(3, 7);
                ExecuteAttack(1); 
                return;
            }
        }

        ExecuteChase();
        ConstrainToArena();
    }

    private void HandleSafetyTimer() {
        if (_isActionLocked && _currentState == BossState.Attacking) {
            _attackSafetyTimer += Time.deltaTime;
            if (_attackSafetyTimer > 5.0f) {
                OnAnimationActionComplete();
                _attackSafetyTimer = 0;
            }
        } else {
            _attackSafetyTimer = 0;
        }
    }

    private void ConstrainToArena() {
        if (arenaCenter == null) return;

        Vector3 offset = transform.position - arenaCenter.position;
        float yPos = transform.position.y;
        offset.y = 0;

        if (offset.magnitude > arenaRadius) {
            Vector3 clampedPos = arenaCenter.position + (offset.normalized * arenaRadius);
            clampedPos.y = yPos;
            transform.position = clampedPos;
        }
    }

    private void ExecuteAttack(int index) {
        _currentState = BossState.Attacking;
        _isActionLocked = true; 
        if (_animHandler) {
            _animHandler.ResetMovement();
            _animHandler.TriggerSpecificAttack(index);
        }
    }

    private void ExecuteChase() {
        _currentState = BossState.Chasing;
        Vector3 moveDir = (player.position - transform.position).normalized;
        moveDir.y = 0;
        transform.position += moveDir * walkSpeed * Time.deltaTime;
        if (_animHandler) {
            Vector3 localMove = transform.InverseTransformDirection(moveDir);
            _animHandler.UpdateMovement(localMove, false, _currentState);
        }
    }

    private void ExecuteStrafeBehavior(float dist) {
        _currentState = BossState.Cooldown;
        _strafeTimer -= Time.deltaTime;
        if (_strafeTimer <= 0) {
            _strafeDir = Random.value > 0.5f ? 1 : -1;
            _strafeTimer = Random.Range(1f, 2f);
        }
        Vector3 strafe = transform.right * _strafeDir;
        Vector3 forward = Vector3.zero;
        if (dist > closeAttackRange + 1.5f) forward = transform.forward;
        else if (dist < closeAttackRange + 0.5f) forward = -transform.forward;
        Vector3 finalMove = (strafe + (forward * 0.6f)).normalized;
        transform.position += finalMove * strafeSpeed * Time.deltaTime;
        if (_animHandler) {
            Vector3 localMove = transform.InverseTransformDirection(finalMove);
            _animHandler.UpdateMovement(localMove, false, _currentState);
        }
    }

    public bool CanBeStaggered() => Time.time >= _nextAvailableStaggerTime;

    public void EnterStagger(float duration) {
        _currentState = BossState.Staggered;
        _isActionLocked = true; 

        if (_enemyAttack != null) {
            _enemyAttack.ForceResetAttack(); 
        }

        StopAllCoroutines();
        CancelInvoke(nameof(ReturnRB));
        ReturnRB();

        _isTracking = false;
        _normalAttackCount = 0; 

        if (_animHandler) _animHandler.ResetMovement(); 

        StartCoroutine(StaggerTimer(duration));
    }

    private IEnumerator StaggerTimer(float d) {
        yield return new WaitForSeconds(d);
    
        _nextAvailableStaggerTime = Time.time + staggerGlobalCooldown;
    
        _isActionLocked = false;
        _isTracking = true;
        _currentState = BossState.Idle;
        _cooldownTimer = 0.5f; 
    
        if (_animHandler) _animHandler.EndStagger();
    }

    public void OnAnimationActionComplete() {
        _isJumping = false;
        _isActionLocked = false;
        _currentState = BossState.Idle;
        _cooldownTimer = postAttackRest; 
        if (_animHandler) _animHandler.ResetMovement();
    }

    public void SetActionLock(bool locked) {
        if (_currentState == BossState.Attacking && !locked) return; 
        _isActionLocked = locked;
        if (locked && _animHandler) _animHandler.ResetMovement();
    }

    private void LookAtPlayer(float speed) {
        Vector3 dir = (player.position - transform.position).normalized;
        dir.y = 0;
        if (dir != Vector3.zero) transform.rotation = Quaternion.Slerp(transform.rotation, Quaternion.LookRotation(dir), speed * Time.deltaTime);
    }

    public void AddForceForward() => rbForce(transform.forward * 150f);
    public void AddForceForwardATK1() => rbForce(transform.forward * 800f); 
    public void AddForceBackwards() => rbForce(-transform.forward * 100f);
    
    private void rbForce(Vector3 force) {
        if (!_rb) return;
        _rb.isKinematic = false;
        _rb.AddForce(force, ForceMode.Impulse);
        Invoke(nameof(ReturnRB), 0.4f);
    }

    public void ReturnRB() { 
        if (_rb) _rb.isKinematic = true; 
        ConstrainToArena(); 
    }

    private void OnDrawGizmosSelected() {
        if (arenaCenter == null) return;
        Gizmos.color = gizmoColor;
        
        float segments = 32;
        float angle = 0f;
        Vector3 lastPoint = arenaCenter.position + new Vector3(arenaRadius, 0, 0);

        for (int i = 0; i <= segments; i++) {
            angle += (2f * Mathf.PI) / segments;
            Vector3 nextPoint = arenaCenter.position + new Vector3(Mathf.Cos(angle) * arenaRadius, 0, Mathf.Sin(angle) * arenaRadius);
            Gizmos.DrawLine(lastPoint, nextPoint);
            lastPoint = nextPoint;
        }
    }
    
    public void OnBossTookHit() {
        if (_currentState == BossState.Staggered || _isActionLocked || _isJumping) return;

        // --- 1/3 CHANCE TO FLINCH & IDLE ---
        // Random.Range(0, 3) returns 0, 1, or 2. 
        if (Random.Range(0, 4) == 0) 
        {
            // Trigger the same 2-second lock as the parry
            ForceParryStagger(1.3f); 
            return; // Skip the rest so he doesn't jump away while idling
        }

        // --- NORMAL HIT LOGIC ---
        _currentHitCount++;

        if (_currentHitCount >= _targetHitCount) {
            StartJumpReset();
        }
    }
    
    private void StartJumpReset() {
        if (_animHandler == null || _animHandler._animator == null) {
            Debug.LogError("Animator missing on Boss!");
            return;
        }

        _currentHitCount = 0;
        _targetHitCount = Random.Range(6, 9); 
        _isJumping = true;
        _isActionLocked = true;
        _currentState = BossState.Attacking;

        Vector3 offset = transform.position - arenaCenter.position;
        bool shouldJumpLeft = Vector3.Dot(transform.right, offset) > 0;

        if (shouldJumpLeft) {
            _animHandler._animator.CrossFadeInFixedTime("JumpLeft", 0.1f);
        } else {
            _animHandler._animator.CrossFadeInFixedTime("JumpRight", 0.1f);
        }
    }
    
    public void AE_ApplyJumpForce(float sidePower) {
        Vector3 force = (transform.right * sidePower) + (transform.up * 8f);
        rbForce(force);
    }
    
    [Header("Advanced Dash")]
    public float dashDistance = 20f; 
    public float dashTime = 0.4f;     

    public void AE_LongDash() 
    {
        StartCoroutine(LongDashRoutine());
    }

    private IEnumerator LongDashRoutine() 
    {
        if (!_rb) yield break;

        _rb.isKinematic = false;
        float elapsed = 0f;
    
        Vector3 dashDir = (player.position - transform.position).normalized;
        dashDir.y = 0;

        transform.rotation = Quaternion.LookRotation(dashDir);

        while (elapsed < dashTime) 
        {
            _rb.linearVelocity = dashDir * (dashDistance / dashTime);
        
            elapsed += Time.deltaTime;
            yield return null;
        }

        _rb.linearVelocity = Vector3.zero;
        ReturnRB(); 
    }
    
    public void AE_PlayParticleOnBody()
    {
        if (bodyVFX != null && handTransform != null)
        {
            ParticleSystem vfx = Instantiate(bodyVFX, handTransform.position, handTransform.rotation);
        
            vfx.transform.parent = handTransform; 
        
            Destroy(vfx.gameObject, 2.0f);
        }
        else
        {
            Debug.LogWarning("VFX or Hand Transform missing on BossAI!");
        }
    }

    public void ResumeAI()
    {
        _isActionLocked = false;
        _isTracking = true;
        _currentState = BossState.Idle;
        _cooldownTimer = 0.2f;
        _currentHitCount = 0;

        if (_animHandler != null)
        {
            _animHandler.ResetMovement();
        }
    }
    
    public void ForceParryStagger(float duration)
    {
        // 1. Reset all combat flags
        _isActionLocked = true;
        _isTracking = false;
        _currentState = BossState.Staggered;
        _currentHitCount = 0; // Reset his jump-away counter

        // 2. Kill current attacks/physics
        if (_enemyAttack != null) _enemyAttack.ForceResetAttack();
        StopAllCoroutines();
        ReturnRB();

        // 3. Force the Animation
        if (_animHandler != null && _animHandler._animator != null)
        {
            // "GotHit" must match the trigger or state name in your Animator
            _animHandler._animator.Play("GotHit", 0, 0f); 
        }

        // 4. Start the 2-second Idle timer
        StartCoroutine(ParryIdleRoutine(duration));
    }

    private IEnumerator ParryIdleRoutine(float duration)
    {
        yield return new WaitForSecondsRealtime(duration);
    
        // Resume AI logic
        _isActionLocked = false;
        _isTracking = true;
        _currentState = BossState.Idle;
        _cooldownTimer = 0.5f;

        if (_animHandler != null)
        {
            _animHandler.EndStagger(); // Returns him to Locomotion/Idle
        }
    }
    
}