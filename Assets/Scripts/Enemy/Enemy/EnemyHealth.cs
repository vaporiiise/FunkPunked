using UnityEngine;

public class EnemyHealth : MonoBehaviour
{
    [Header("Health")]
    public float maxHealth = 20f;
    private float currentHealth;

    [Header("Death")]
    public GameObject deathParticle;
    public float deathDestroyDelay = 1.5f;

    [Header("References")]
    public EnemyHealthBar healthUI;
    private EnemyAnimatorHandler animHandler;
    private EnemyMovement movement;

    public void Initialize()
    {
        currentHealth = maxHealth;

        if (healthUI == null)
            healthUI = GetComponentInChildren<EnemyHealthBar>();

        if (healthUI != null)
            healthUI.InitializeHealth((int)maxHealth);
    }

    void Start()
    {
        animHandler = GetComponentInChildren<EnemyAnimatorHandler>();
        movement = GetComponent<EnemyMovement>();

        if (currentHealth == 0)
            Initialize();
    }

    public void TakeDamage(float amount)
    {
        currentHealth -= amount;

        if (healthUI != null)
        {
            healthUI.PlayDamageEffect();
        }

        animHandler?.PlayHit();
        healthUI?.UpdateHealth((int)currentHealth);

        if (currentHealth <= 0)
            Die();
    }

    private void Die()
    {
        movement?.StopMovement(true);
        animHandler?.PlayDie();

        if (deathParticle != null)
        {
            GameObject fx = Instantiate(deathParticle, transform.position, Quaternion.identity);
            Destroy(fx, 3f);
        }

        Destroy(gameObject, deathDestroyDelay);
    }
}