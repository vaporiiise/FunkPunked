using UnityEngine;
using System.Collections;

public class BossAI : MonoBehaviour
{
    public enum BossState { Idle, Chasing, Strafing, Attacking, Retreating, Staggered }

    [Header("Speeds")]
    public float walkSpeed = 2.5f;
    public float runSpeed = 6.5f;
    public float strafeSpeed = 5f;
    public float rotationSpeed = 10f;

    [Header("Ranges")]
    public Transform player;
    public float attackRange = 2.5f;
    public float strafeRange = 8f;
    public float runThreshold = 12f;

    private BossState _currentState = BossState.Idle;
    private BossAnimationHandler _animHandler;
    private bool _isActionLocked = false;
    private float _nextAttackTime;
    private Coroutine _activeRoutine;
    private Rigidbody rb;

    void Awake() => _animHandler = GetComponent<BossAnimationHandler>();

    void Start()
    {
        rb = GetComponent<Rigidbody>();

    }

    void Update()
    {
        if (player == null) { FindPlayer(); return; }
        if (_isActionLocked) return;

        float distance = Vector3.Distance(transform.position, player.position);

        switch (_currentState)
        {
            case BossState.Idle:
                if (distance > strafeRange) _currentState = BossState.Chasing;
                else if (distance <= attackRange && Time.time >= _nextAttackTime) StartAttack();
                else if (distance <= strafeRange) StartSpecialRoutine(StrafeRoutine());
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
        int side = Random.value > 0.5f ? 1 : -1;

        while (timer > 0)
        {
            Vector3 dirToPlayer = (player.position - transform.position).normalized;
            Vector3 sideDir = Vector3.Cross(Vector3.up, dirToPlayer).normalized * side;
            ApplyMovement(sideDir, strafeSpeed);
            transform.rotation = Quaternion.Slerp(transform.rotation, Quaternion.LookRotation(dirToPlayer), rotationSpeed * Time.deltaTime);
            timer -= Time.deltaTime;
            if (Vector3.Distance(transform.position, player.position) <= attackRange) break;
            yield return null;
        }
        _currentState = BossState.Idle;
    }

    private void StartAttack()
    {
        _isActionLocked = true;
        _animHandler.ResetMovement();
        _animHandler.TriggerRandomAttack();
        _nextAttackTime = Time.time + 2f;
    }

    public void OnAnimationActionComplete()
    {
        _isActionLocked = false;
        _animHandler.EndStagger();
        _currentState = BossState.Idle;
    }

    public void EnterStagger(float duration) => StartCoroutine(StaggerTimer(duration));

    private IEnumerator StaggerTimer(float d)
    {
        _isActionLocked = true;
        _currentState = BossState.Staggered;
        _animHandler.ResetMovement();
        yield return new WaitForSeconds(d);
        OnAnimationActionComplete();
    }

    private void ApplyMovement(Vector3 dir, float speed)
    {
        transform.position += dir * speed * Time.deltaTime;
        if (_currentState == BossState.Chasing)
            transform.rotation = Quaternion.Slerp(transform.rotation, Quaternion.LookRotation(dir), rotationSpeed * Time.deltaTime);

        Vector3 local = transform.InverseTransformDirection(dir);
        _animHandler.UpdateMovement(local, speed > walkSpeed, _currentState);
    }

    private void StartSpecialRoutine(IEnumerator routine)
    {
        if (_activeRoutine != null) StopCoroutine(_activeRoutine);
        _activeRoutine = StartCoroutine(routine);
    }
    
    public void AddForceBackwards()
    {
        rb.isKinematic = false;
        rb.AddForce(-transform.forward * 50f, ForceMode.Impulse);
    }
    
    public void AddForceBackwardsPlus()
    {
        rb.isKinematic = false;
        rb.AddForce(-transform.forward * 100f, ForceMode.Impulse);
    }

    public void ReturnRB()
    {
        rb.isKinematic = true;
    }

    private void FindPlayer() { GameObject p = GameObject.FindGameObjectWithTag("Player"); if (p) player = p.transform; }
}