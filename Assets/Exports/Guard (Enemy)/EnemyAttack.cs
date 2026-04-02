using UnityEngine;

public class EnemyAttack : MonoBehaviour
{
    public LayerMask playerLayer;
    public GameObject attackHitbox;
    public float knockbackForce = 15f;
    public Renderer enemyRenderer; 

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
                health.TakeDamage(15f);
            }
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
            // Guards fly back further than the Boss
            float force = (GetComponentInParent<EnemyAI>() != null) ? 20f : knockbackForce;
            _rb.AddForce(-transform.forward * force, ForceMode.Impulse);
        }

        // Notify the relevant Brain
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