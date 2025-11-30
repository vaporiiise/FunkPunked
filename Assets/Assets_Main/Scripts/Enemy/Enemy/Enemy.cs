using UnityEngine;
using UnityEngine.AI;

public class Enemy : MonoBehaviour
{
    public enum State { Roam, Chase, Circle, Strafe, Attack, Stagger, Dead }
    public State currentState = State.Roam;

    [Header("References")]
    public Transform player;
    private EnemyMovement movement;
    public EnemyCombat combat;
    private EnemyHealth health;

    private float stateTimer;

    [Header("Strafe Settings")]
    public float strafeDistance = 2f;        // Sideways movement distance
    public float strafeChangeInterval = 2f;  // How often to switch direction
    private Vector3 strafeDir;
    private float strafeTimer;

    void Awake()
    {
        movement = GetComponent<EnemyMovement>();
        combat = GetComponent<EnemyCombat>();
        health = GetComponent<EnemyHealth>();

        if (player == null)
            player = GameObject.FindGameObjectWithTag("Player").transform;

        movement.Initialize(player);
        combat.Initialize(player);
        health.Initialize(this);

        strafeTimer = strafeChangeInterval;
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

        // Randomly strafe if somewhat close
        if (distanceToPlayer < 6f && Random.value < 0.01f)
        {
            ChangeState(State.Strafe);
        }
    }

    void StateStrafe()
    {
        if (!movement.CanSeePlayer()) { ChangeState(State.Roam); return; }

        float distanceToPlayer = Vector3.Distance(transform.position, player.position);

        // Attack if very close
        if (distanceToPlayer <= movement.attackRange)
        {
            ChangeState(State.Attack);
            combat.DoAttack(() => ChangeState(State.Strafe));
            return;
        }

        // Change strafe direction periodically
        strafeTimer -= Time.deltaTime;
        if (strafeTimer <= 0f)
        {
            PickNewStrafeDirection();
            strafeTimer = strafeChangeInterval;
        }

        // Move sideways relative to player
        Vector3 targetPos = transform.position + strafeDir * strafeDistance;
        movement.MoveTo(targetPos);

        // Always face player
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
        // Handled by combat
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

    #endregion
}
