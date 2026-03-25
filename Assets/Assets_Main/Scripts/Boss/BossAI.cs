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

    private bool _isActionLocked = false; 
    private bool _isTracking = true;

    private BossAnimationHandler _animHandler;
    private Rigidbody _rb;

    public bool IsStaggered => _currentState == BossState.Staggered;

    void Awake() {
        _rb = GetComponent<Rigidbody>();
        _animHandler = GetComponent<BossAnimationHandler>();
        if (_rb) _rb.isKinematic = true;
        _requiredNormalsBeforeDash = Random.Range(3, 7);
    }

    void Update() {
        if (player == null || _currentState == BossState.Staggered) return;

        if (_isTracking) LookAtPlayer(rotationSpeed);
        
        if (_isActionLocked) {
            if (_animHandler) _animHandler.ResetMovement();
            return;
        }

        float dist = Vector3.Distance(transform.position, player.position);

        if (_cooldownTimer > 0) {
            _cooldownTimer -= Time.deltaTime;
            ExecuteStrafeBehavior(dist);
            return;
        }

        if (dist <= closeAttackRange) {
            _normalAttackCount++;
            ExecuteAttack(2);
            return;
        } 

        if (_normalAttackCount >= _requiredNormalsBeforeDash && dist >= 8.0f && dist <= dashAttackRange) {
            _normalAttackCount = 0;
            _requiredNormalsBeforeDash = Random.Range(3, 7);
            ExecuteAttack(1);
            return;
        }

        ExecuteChase();
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
        StopAllCoroutines();
        CancelInvoke(nameof(ReturnRB));
        ReturnRB();
        _currentState = BossState.Staggered;
        _isActionLocked = true;
        _isTracking = false;
        StartCoroutine(StaggerTimer(duration));
    }

    private IEnumerator StaggerTimer(float d) {
        yield return new WaitForSeconds(d);
        _nextAvailableStaggerTime = Time.time + staggerGlobalCooldown;
        _isActionLocked = false;
        _isTracking = true;
        _currentState = BossState.Idle;
        _cooldownTimer = 0;
        if (_animHandler) _animHandler.EndStagger();
    }

    public void OnAnimationActionComplete() {
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
    public void ReturnRB() { if (_rb) _rb.isKinematic = true; }
}