using UnityEngine;

public class Enemy : MonoBehaviour
{
    public int maxHits = 50;
    private int currentHits = 0;
    private int consecutiveHits = 0;
    private float hitWindowTimer;

    private BossAnimationHandler _animHandler;
    private BossAI _brain;

    void Awake()
    {
        _animHandler = GetComponent<BossAnimationHandler>();
        _brain = GetComponent<BossAI>();
    }

    void Update()
    {
        // Reset combo counter if player stops attacking for 2 seconds
        if (hitWindowTimer > 0)
        {
            hitWindowTimer -= Time.deltaTime;
            if (hitWindowTimer <= 0) consecutiveHits = 0;
        }
    }

    public void TakeHit(Transform attacker = null)
    {
        currentHits++;
        consecutiveHits++;
        hitWindowTimer = 2.0f;

        // Logic for 3 different Got Hits
        if (consecutiveHits >= 6) // Heavy Stagger
        {
            _animHandler.TriggerHit(2);
            if (_brain) _brain.EnterStagger(3.0f);
            consecutiveHits = 0;
        }
        else if (consecutiveHits >= 3) // Normal Hit
        {
            _animHandler.TriggerHit(1);
        }
        else // Subtle Flinch
        {
            _animHandler.TriggerHit(0);
        }

        if (currentHits >= maxHits) Die();
    }

    private void Die()
    {
        _animHandler.ResetMovement();
        // Trigger your death logic/animation here
        if (_brain) _brain.enabled = false;
    }
}