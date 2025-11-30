using UnityEngine;
using System.Collections.Generic;
using System.Collections;

public class BossController : MonoBehaviour
{
    [System.Serializable]
    public class BossEntry
    {
        public Enemy enemy;              // reference to the Enemy script
        [HideInInspector] public int lastPhase = 100; // last 20% HP phase
        public float retreatDistance = 4f; // retreat distance for this boss
    }

    [Header("Boss Setup")]
    public List<BossEntry> bosses;

    [Header("Phase Settings")]
    public float retreatDuration = 0.4f; // duration of backward jump
    public float minAttackDistance = 2f; // distance at which boss attacks

    void Update()
    {
        foreach (var boss in bosses)
        {
            if (boss.enemy == null) continue;

            float hpPercent = boss.enemy.GetComponent<EnemyHealth>().currentHealth / 
                              boss.enemy.GetComponent<EnemyHealth>().maxHealth;
            int hpPercentInt = Mathf.FloorToInt(hpPercent * 100);

            int currentPhase = (hpPercentInt / 20) * 20;

            // Trigger retreat/circle if new 20% phase reached
            if (currentPhase < boss.lastPhase)
            {
                boss.lastPhase = currentPhase;
                StartCoroutine(RetreatBoss(boss));
            }
        }
    }

    IEnumerator RetreatBoss(BossEntry retreatingBoss)
    {
        if (retreatingBoss.enemy == null) yield break;

        var agent = retreatingBoss.enemy.GetComponent<UnityEngine.AI.NavMeshAgent>();
        var movement = retreatingBoss.enemy.GetComponent<EnemyMovement>();
        var player = retreatingBoss.enemy.player;

        if (agent != null && movement != null && player != null)
        {
            // Stop its normal movement
            movement.StopInstant();

            // Retreat backwards
            Vector3 dir = (retreatingBoss.enemy.transform.position - player.position).normalized;
            Vector3 targetPos = retreatingBoss.enemy.transform.position + dir * retreatingBoss.retreatDistance;

            float t = 0f;
            Vector3 start = retreatingBoss.enemy.transform.position;

            while (t < 1f)
            {
                t += Time.deltaTime / retreatDuration;
                agent.transform.position = Vector3.Lerp(start, targetPos, t);
                yield return null;
            }

            // After retreat, start circling
            retreatingBoss.enemy.ForceCircleState();
            agent.isStopped = false;

            // Make all other bosses "active" (take over attack/circle)
            foreach (var boss in bosses)
            {
                if (boss.enemy == retreatingBoss.enemy) continue;

                float distanceToPlayer = Vector3.Distance(boss.enemy.transform.position, player.position);

                // --- NEW: Only attack if player is very close (<= 2 units) ---
                if (distanceToPlayer <= 2f)
                {
                    boss.enemy.ChangeState(Enemy.State.Attack);
                    boss.enemy.combat.DoAttack(() => boss.enemy.ForceCircleState());
                }
                else
                {
                    // Otherwise, force circling (no attack)
                    boss.enemy.ForceCircleState();
                }
            }
        }
    }

    /// <summary>
    /// Resets all boss phases (useful for fight restart)
    /// </summary>
    public void ResetPhases()
    {
        foreach (var boss in bosses)
            boss.lastPhase = 100;
    }
}
