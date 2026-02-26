using UnityEngine;
using UnityEngine.UI;

public class Enemy : MonoBehaviour
{
    [Header("Health")]
    public int maxHits = 5;
    private int currentHits = 0;

    [Header("Knockback")]
    public float knockbackForce = 2f;   
    public float knockbackDuration = 0.2f; 

    private Vector3 knockbackVelocity;

    [Header("UI")]
    public Image healthBarFill;
    
    [Header("Impact VFX")]
    public ParticleSystem hitImpactPrefab;
    
    [Header("Audio")]
    public AudioClip hitSFX;
    public AudioSource audioSource;

    private void Start()
    {
        currentHits = 0;
        UpdateHealthBar();
    }

    private void Update()
    {
        if(knockbackVelocity.magnitude > 0.01f)
        {
            transform.position += knockbackVelocity * Time.deltaTime;
            knockbackVelocity = Vector3.Lerp(knockbackVelocity, Vector3.zero, Time.deltaTime / knockbackDuration);
        }
    }

    public void TakeHit(Transform attacker = null)
    {
        // Safety: If the 'attacker' isn't the Player, don't process the hit
        if (attacker != null && !attacker.CompareTag("Player")) return;

        currentHits++;
        UpdateHealthBar();

        if(attacker != null)
            ApplyKnockback(attacker);

        if(hitImpactPrefab != null)
        {
            ParticleSystem impact = Instantiate(hitImpactPrefab, transform.position + Vector3.up, Quaternion.identity);
            impact.Play();
            Destroy(impact.gameObject, impact.main.duration);
        }

        if(audioSource != null && hitSFX != null)
            audioSource.PlayOneShot(hitSFX);

        if(attacker != null)
        {
            PlayerCombo combo = attacker.GetComponent<PlayerCombo>();
            if(combo != null)
                combo.AddComboHit();
        }

        if(currentHits >= maxHits)
            Die();
    }




    private void ApplyKnockback(Transform attacker)
    {
        Vector3 dir = transform.position - attacker.position;
        dir.y = 0; 
        dir.Normalize();
        knockbackVelocity = dir * knockbackForce;
    }

    private void UpdateHealthBar()
    {
        if (healthBarFill != null)
            healthBarFill.fillAmount = 1f - ((float)currentHits / maxHits);
    }

    private void Die()
    {
        Destroy(gameObject);
    }
}