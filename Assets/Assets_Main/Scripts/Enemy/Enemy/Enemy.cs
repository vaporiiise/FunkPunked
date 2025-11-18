using UnityEngine;

[RequireComponent(typeof(EnemyMovement))]
[RequireComponent(typeof(EnemyCombat))]
[RequireComponent(typeof(EnemyHealth))]
public class Enemy : MonoBehaviour
{
    public Transform player;

    private EnemyMovement movement;
    private EnemyCombat combat;
    private EnemyHealth health;

    void Awake()
    {
        movement = GetComponent<EnemyMovement>();
        combat = GetComponent<EnemyCombat>();
        health = GetComponent<EnemyHealth>();

        if (player == null)
        {
            GameObject p = GameObject.FindGameObjectWithTag("Player");
            if (p != null)
                player = p.transform;
        }

        movement.Initialize(player);
        combat.player = player;
        health.Initialize();
    }
}