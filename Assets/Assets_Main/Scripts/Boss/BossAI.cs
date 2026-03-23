using UnityEngine;
using System.Collections;

[RequireComponent(typeof(Rigidbody))]
public class BossAI : MonoBehaviour
{
    public enum BossState { Idle, Chasing, Attacking, Staggered }
    private BossState _currentState = BossState.Idle;

    [Header("Speeds")]
    public float walkSpeed = 2.5f;
    public float runSpeed = 6.5f;
    public float rotationSpeed = 10f;

    [Header("Combat")]
    public Transform player;
    public float attackRange = 2.5f;
    public float attackCooldown = 1.5f;
    private float _nextAttackTime;
    private bool _isActionLocked = false;
    private bool _isTracking = false;

    private BossAnimationHandler _animHandler;
    private Rigidbody _rb;

    void Awake() {
        _rb = GetComponent<Rigidbody>();
        _animHandler = GetComponent<BossAnimationHandler>();
        if (_rb) _rb.isKinematic = true;
    }

    void Update() {
        if (player == null || _currentState == BossState.Staggered) return;
        if (_isTracking) LookAtPlayer(20f);
        if (_isActionLocked) return;

        float dist = Vector3.Distance(transform.position, player.position);
        if (dist <= attackRange && Time.time >= _nextAttackTime) {
            StartAttack();
        } else {
            ApplyMovement((player.position - transform.position).normalized, walkSpeed);
        }
    }

    private void StartAttack() {
        _isActionLocked = true;
        _isTracking = true;
        int attackIndex = Random.Range(0, 3);
        if (_animHandler) _animHandler.TriggerSpecificAttack(attackIndex);
        _nextAttackTime = Time.time + attackCooldown;
    }

    public void EnterStagger(float duration) {
        _isActionLocked = true;
        _isTracking = false;
        _currentState = BossState.Staggered;
        StopAllCoroutines();
        ReturnRB();
        if (_animHandler) {
            _animHandler.ResetMovement();
            _animHandler.TriggerHit(1);
        }
        StartCoroutine(StaggerTimer(duration));
    }

    private IEnumerator StaggerTimer(float d) {
        yield return new WaitForSeconds(d);
        _isActionLocked = false;
        _currentState = BossState.Idle;
        if (_animHandler) _animHandler.EndStagger();
    }

    private void ApplyMovement(Vector3 dir, float speed) {
        transform.position += dir * speed * Time.deltaTime;
        if (dir != Vector3.zero) transform.rotation = Quaternion.Slerp(transform.rotation, Quaternion.LookRotation(dir), rotationSpeed * Time.deltaTime);
        if (_animHandler) _animHandler.UpdateMovement(transform.InverseTransformDirection(dir), speed > walkSpeed, _currentState);
    }

    private void LookAtPlayer(float speed) {
        Vector3 dir = (player.position - transform.position).normalized;
        dir.y = 0;
        transform.rotation = Quaternion.Slerp(transform.rotation, Quaternion.LookRotation(dir), speed * Time.deltaTime);
    }

    public void AddForceForward() => rbForce(transform.forward * 100f);
    public void AddForceForwardATK1() => rbForce(transform.forward * 500f);
    public void AddForceBackwards() => rbForce(-transform.forward * 50f);
    public void AddForceBackwardsPlus() => rbForce(-transform.forward * 100f);

    private void rbForce(Vector3 force) {
        if (!_rb) return;
        _rb.isKinematic = false;
        _rb.AddForce(force, ForceMode.Impulse);
        Invoke(nameof(ReturnRB), 0.4f);
    }

    public void ReturnRB() { 
        if (!_rb) return;
        _rb.linearVelocity = Vector3.zero;
        _rb.isKinematic = true; 
    }

    public void AE_StopTracking() => _isTracking = false;
    public void OnAnimationActionComplete() { _isActionLocked = false; _isTracking = false; }
}