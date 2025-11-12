using UnityEngine;

[RequireComponent(typeof(EnemyMovement))]
[RequireComponent(typeof(EnemyCombat))]
[RequireComponent(typeof(EnemyHealth))]
public class Enemy : MonoBehaviour
{
    [Header("References")]
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

        // Initialize movement
        if (movement != null && player != null)
            movement.Initialize(player);

        // Assign player to combat
        if (combat != null && player != null)
            combat.player = player;

        // Initialize health
        if (health != null)
            health.Initialize();
    }
}