using UnityEngine;

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

    public void Initialize(AttackController controller)
    {
        owner = controller;
    }

    public void EnableDamage()
    {
        canDamage = true;
        weaponCollider.enabled = true;
    }

    public void DisableDamage()
    {
        canDamage = false;
        weaponCollider.enabled = false;
    }

    private void OnTriggerEnter(Collider other)
    {
        if (!canDamage) return;
        if (!other.CompareTag(targetTag)) return;

        EnemyHealth enemy = other.GetComponent<EnemyHealth>();
        if (enemy != null)
        {
            enemy.TakeDamage(damage);

            owner?.OnSuccessfulHit();

            Debug.Log($"Hit enemy: {other.name}");
        }
    }
}