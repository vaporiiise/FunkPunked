using UnityEngine;
using UnityEngine.AI;

public class Enemy : MonoBehaviour
{
    public enum State { Roam, Chase, Attack, Stagger, Dead }
    public State currentState = State.Roam;

    [Header("Others")]
    public Transform player;

    private EnemyMovement movement;
    private EnemyCombat combat;
    private EnemyHealth health;

    private float stateTimer;

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
    }

    void Update()
    {
        if (currentState == State.Dead) return;

        switch (currentState)
        {
            case State.Roam:   StateRoam(); break;
            case State.Chase:  StateChase(); break;
            case State.Attack: StateAttack(); break;
            case State.Stagger: break;
        }
    }

    void ChangeState(State s)
    {
        currentState = s;
        stateTimer = 0f;
    }

    // --------------------------
    void StateRoam()
    {
        if (movement.CanSeePlayer()) { ChangeState(State.Chase); return; }
        movement.Roam();
    }

    void StateChase()
    {
        if (!movement.CanSeePlayer()) { ChangeState(State.Roam); return; }

        if (movement.IsInAttackRange())
        {
            ChangeState(State.Attack);
            combat.DoAttack(() => ChangeState(State.Chase));
            return;
        }
        
        movement.Chase();
    }

    void StateAttack()
    {
        // Attacking handled by combat coroutine
    }

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
}
