using UnityEngine;

public class EnemyAttack : MonoBehaviour
{
    public LayerMask playerLayer;
    public GameObject attackHitbox;
    public float knockbackForce = 15f;
    public Renderer bossRenderer; 

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
        if (bossRenderer) _originalColor = bossRenderer.material.color;
    }

    void Update() { 
        if (bossRenderer) bossRenderer.material.color = _isParryable ? Color.yellow : _originalColor; 
    }

    private void OnTriggerEnter(Collider other) {
        if (!isAttacking || _hasDealtDamageThisSwing) return;

        if (((1 << other.gameObject.layer) & playerLayer) != 0) {
            PlayerHealth health = other.GetComponentInParent<PlayerHealth>();
            
            Enemy enemyManager = GetComponentInParent<Enemy>();
            if (enemyManager != null) {
                enemyManager.ResetStabilityOnPlayerHit(); 
            }

            if (health != null && !health.IsInvulnerable) {
                _hasDealtDamageThisSwing = true;
                health.TakeDamage(15f);
            }
        }
    }

    public void ForceResetAttack() {
        isAttacking = false; 
        _isParryable = false; 
        _hasDealtDamageThisSwing = false;
        if (attackHitbox) attackHitbox.SetActive(false);
        if (bossRenderer) bossRenderer.material.color = _originalColor;
    }

    public void OnGetParried() {
        ForceResetAttack(); 
        if (_animator) _animator.SetTrigger("GotHit"); 
        if (_rb != null) {
            _rb.isKinematic = false;
            _rb.AddForce(-transform.forward * knockbackForce, ForceMode.Impulse);
            Invoke(nameof(ReturnRBInternal), 0.4f);
        }
    }

    private void ReturnRBInternal() { if (_rb) _rb.isKinematic = true; }
    
    public void AE_StartAttack() { 
        isAttacking = true; 
        _isParryable = true; 
        _hasDealtDamageThisSwing = false; 
        if (attackHitbox) attackHitbox.SetActive(true); 
    }
    
    public void AE_EndAttack() => ForceResetAttack();
}