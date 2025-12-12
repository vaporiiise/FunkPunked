using UnityEngine;
using System.Collections;
using UnityEngine.AI;

public class Enemy : MonoBehaviour
{
    public enum State { Roam, Chase, Circle, Strafe, Attack, Stagger, Dead }
    public State currentState = State.Roam;

    [Header("References")]
    public Transform player;
    private EnemyMovement movement;
    public GuardCombat combat;
    private EnemyHealth health;
    public Animator animator;
    private Rigidbody rb;

    private float stateTimer;

    [HideInInspector] public EnemyAnimatorHandler animHandler;

    [Header("Strafe Settings")]
    public float strafeDistance = 2f;
    public float strafeChangeInterval = 2f;
    private Vector3 strafeDir;
    private float strafeTimer;
    public bool isStaggered = false;

    [Header("Parry Settings")]
    public float knockbackForce = 10f;

    void Awake()
    {
        movement = GetComponent<EnemyMovement>();
        combat = GetComponent<GuardCombat>();
        health = GetComponent<EnemyHealth>();
        animHandler = GetComponent<EnemyAnimatorHandler>();
        rb = GetComponent<Rigidbody>();

        if (player == null)
            player = GameObject.FindGameObjectWithTag("Player").transform;

        movement.Initialize(player);
        combat.Initialize(player);
        health.Initialize(this);

        strafeTimer = strafeChangeInterval;

        PlayerParry.OnParrySuccessful += OnParrySuccess;
        PlayerParry.OnParryBurst += OnParryBurst;
    }

    void OnDestroy()
    {
        PlayerParry.OnParrySuccessful -= OnParrySuccess;
        PlayerParry.OnParryBurst -= OnParryBurst;
    }

    void Update()
    {
        if (currentState == State.Dead) return;

        switch (currentState)
        {
            case State.Roam:   StateRoam(); break;
            case State.Chase:  StateChase(); break;
            case State.Circle: StateCircle(); break;
            case State.Strafe: StateStrafe(); break;
            case State.Attack: StateAttack(); break;
            case State.Stagger: break;
        }
    }

    public void ChangeState(State s)
    {
        currentState = s;
        stateTimer = 0f;

        if (s == State.Strafe)
            PickNewStrafeDirection();
    }

    #region States

    void StateRoam()
    {
        if (movement.CanSeePlayer()) { ChangeState(State.Chase); return; }
        movement.Roam();
    }

    void StateChase()
    {
        if (!movement.CanSeePlayer()) { ChangeState(State.Roam); return; }

        float distanceToPlayer = Vector3.Distance(transform.position, player.position);

        if (distanceToPlayer <= movement.attackRange)
        {
            ChangeState(State.Attack);
            combat.DoAttack(() => ChangeState(State.Strafe));
            return;
        }

        movement.Chase();

        if (distanceToPlayer < 6f && Random.value < 0.01f)
            ChangeState(State.Strafe);
    }

    void StateStrafe()
    {
        if (!movement.CanSeePlayer()) { ChangeState(State.Roam); return; }

        float distanceToPlayer = Vector3.Distance(transform.position, player.position);

        if (distanceToPlayer <= movement.attackRange)
        {
            ChangeState(State.Attack);
            combat.DoAttack(() => ChangeState(State.Strafe));
            return;
        }

        strafeTimer -= Time.deltaTime;
        if (strafeTimer <= 0f)
        {
            PickNewStrafeDirection();
            strafeTimer = strafeChangeInterval;
        }

        Vector3 targetPos = transform.position + strafeDir * strafeDistance;
        movement.MoveTo(targetPos);

        Vector3 lookDir = player.position - transform.position;
        if (lookDir != Vector3.zero)
            transform.rotation = Quaternion.Slerp(transform.rotation,
                                                  Quaternion.LookRotation(lookDir),
                                                  Time.deltaTime * 5f);
    }

    void StateCircle()
    {
        if (!movement.CanSeePlayer())
        {
            ChangeState(State.Roam);
            return;
        }

        float distanceToPlayer = Vector3.Distance(transform.position, player.position);

        if (distanceToPlayer <= 2f)
        {
            ChangeState(State.Chase);
            return;
        }

        if (movement.IsInAttackRange())
        {
            ChangeState(State.Attack);
            combat.DoAttack(() => ChangeState(State.Circle));
            return;
        }

        movement.CirclePlayer(player);
    }

    void StateAttack()
    {
        // Attack handled by GuardCombat
    }

    #endregion

    #region Utility

    public void PickNewStrafeDirection()
    {
        Vector3 toPlayer = (player.position - transform.position).normalized;
        Vector3 right = Vector3.Cross(Vector3.up, toPlayer);
        strafeDir = (Random.value > 0.5f) ? right : -right;
    }

    public void ForceCircleState() => ChangeState(State.Circle);
    public void ForceStrafeState() => ChangeState(State.Strafe);

    public void EnterStagger(float duration)
    {
        ChangeState(State.Stagger);
        movement.StopInstant();
        Invoke(nameof(ExitStagger), duration);
    }

    void ExitStagger()
    {
        if (currentState != State.Dead)
            ChangeState(State.Chase);

        movement.Resume();
    }

    public void Die()
    {
        ChangeState(State.Dead);
        movement.StopInstant();
        combat.enabled = false;
    }

    public void GetParried()
    {
        if (isStaggered) return;
        isStaggered = true;

        animHandler.PlayKnockback();
        Debug.Log("Enemy staggered by parry!");

        if (rb != null)
        {
            Vector3 dir = (transform.position - player.position).normalized;
            rb.AddForce(dir * knockbackForce, ForceMode.Impulse);
        }

        StartCoroutine(StaggerRecovery(0.5f));
    }

    private IEnumerator StaggerRecovery(float duration)
    {
        yield return new WaitForSeconds(duration);
        isStaggered = false;
    }

    private void OnParrySuccess()
    {
        Debug.Log("Enemy registered a parry hit!");
    }

    private void OnParryBurst()
    {
        GetParried();
    }

    #endregion
}
