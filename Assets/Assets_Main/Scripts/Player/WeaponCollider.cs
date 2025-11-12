using UnityEngine;

[RequireComponent(typeof(Collider))]
public class WeaponCollider : MonoBehaviour
{
    [Header("Settings")]
    public float damage = 1f;
    public string targetTag = "Enemy";
    public LayerMask enemyLayer;

    private Collider weaponCollider;
    private bool canDamage = false;
    private AttackController owner;

    private void Awake()
    {
        weaponCollider = GetComponent<Collider>();
        weaponCollider.enabled = false;
    }

    /// <summary>
    /// Initialize the weapon collider with its owner (player/attack controller).
    /// </summary>
    public void Initialize(AttackController controller)
    {
        owner = controller;
    }

    /// <summary>
    /// Enables damage detection (use for swing peak).
    /// </summary>
    public void EnableDamage()
    {
        canDamage = true;
        weaponCollider.enabled = true;
    }

    /// <summary>
    /// Disables damage detection.
    /// </summary>
    public void DisableDamage()
    {
        canDamage = false;
        weaponCollider.enabled = false;
    }

    /// <summary>
    /// These functions are for Animation Events if you want to toggle the collider directly.
    /// </summary>
    public void EnableWeaponCollider()
    {
        weaponCollider.enabled = true;
    }

    public void DisableWeaponCollider()
    {
        weaponCollider.enabled = false;
    }

    private void OnTriggerEnter(Collider other)
    {
        if (!canDamage) return;
        if (!other.CompareTag(targetTag)) return;

        // Only deal damage to objects on the specified layer
        if ((enemyLayer.value & (1 << other.gameObject.layer)) == 0) return;

        EnemyHealth enemy = other.GetComponent<EnemyHealth>();
        if (enemy != null)
        {
            enemy.TakeDamage(damage);
            owner?.OnSuccessfulHit();

            Debug.Log($"Hit enemy: {other.name}");
        }
    }
}