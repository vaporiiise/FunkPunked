using UnityEngine;
using System.Collections; // Required for Coroutines

public class EnemyAttack : MonoBehaviour
{
    public LayerMask playerLayer;
    public GameObject attackHitbox;
    public float knockbackForce = 15f;
    public Renderer enemyRenderer; 

    [Header("Hit VFX")]
    public GameObject hitVFXPrefab; // Assign your Spark/Slash VFX here
    public float vfxDelay = 0.05f;

    [HideInInspector] public bool isAttacking = false; 
    private bool _isParryable = false;
    private bool _hasDealtDamageThisSwing = false;
    private Animator _animator;
    private Rigidbody _rb;
    private Color _originalColor;

    void Awake() {
        _animator = GetComponentInParent<Animator>();
        _rb = GetComponentInParent<Rigidbody>();
        if (attackHitbox) attackHitbox.SetActive(false);
        if (enemyRenderer) _originalColor = enemyRenderer.material.color;
    }

    void Update() { 
        if (enemyRenderer) enemyRenderer.material.color = _isParryable ? Color.yellow : _originalColor; 
    }

    private void OnTriggerEnter(Collider other) {
        if (!isAttacking || _hasDealtDamageThisSwing) return;

        if (((1 << other.gameObject.layer) & playerLayer) != 0) {
            PlayerHealth health = other.GetComponentInParent<PlayerHealth>();
            Enemy enemyManager = GetComponentInParent<Enemy>();
            
            if (enemyManager != null) enemyManager.ResetStabilityOnPlayerHit(); 

            if (health != null && !health.IsInvulnerable) {
                _hasDealtDamageThisSwing = true;
                
                // 1. Calculate the Hit Point
                // Finds the point on Melo's collider closest to our hitbox center
                Vector3 hitPoint = other.ClosestPoint(transform.position);

                // 2. Spawn VFX with Delay
                StartCoroutine(SpawnDelayedVFX(hitPoint));

                // 3. Deal Damage
                health.TakeDamage(15f);
            }
        }
    }

    // Coroutine to handle the 0.05s delay
    private IEnumerator SpawnDelayedVFX(Vector3 position)
    {
        yield return new WaitForSeconds(vfxDelay);
        
        if (hitVFXPrefab != null)
        {
            // Spawn the VFX at the impact point
            GameObject vfx = Instantiate(hitVFXPrefab, position, Quaternion.identity);
            
            // Clean up VFX after 2 seconds (adjust as needed)
            Destroy(vfx, 2f); 
        }
    }

    public void OnGetParried() {
        ForceResetAttack(); 

        if (_animator) {
            _animator.ResetTrigger("Attack"); 
            _animator.SetTrigger("GotHit"); 
        }

        if (_rb != null) {
            _rb.isKinematic = false;
            float force = (GetComponentInParent<EnemyAI>() != null) ? 20f : knockbackForce;
            _rb.AddForce(-transform.forward * force, ForceMode.Impulse);
        }

        BossAI boss = GetComponentInParent<BossAI>();
        if (boss != null) boss.ResumeAI(); 

        EnemyAI guard = GetComponentInParent<EnemyAI>();
        if (guard != null) guard.AddForceForward(); 
    }

    public void ForceResetAttack() {
        isAttacking = false; 
        _isParryable = false; 
        _hasDealtDamageThisSwing = false;
        if (attackHitbox) attackHitbox.SetActive(false);
        if (enemyRenderer) enemyRenderer.material.color = _originalColor;
    }

    public void AE_StartAttack() { 
        isAttacking = true; 
        _isParryable = true; 
        _hasDealtDamageThisSwing = false; 
        if (attackHitbox) attackHitbox.SetActive(true); 
    }
    
    public void AE_EndAttack() => ForceResetAttack();
}