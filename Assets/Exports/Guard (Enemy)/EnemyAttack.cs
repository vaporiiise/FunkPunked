using UnityEngine;

public class EnemyAttack : MonoBehaviour
{
    [Header("Detection")]
    public LayerMask playerLayer;
    public GameObject attackHitbox; // Assign your separate Box Collider object here

    [Header("Parry Reaction")]
    public float knockbackForce = 15f;
    public ParticleSystem bodyParticle; 

    [Header("Debug Settings")]
    public bool showParryWindowDebug = true;
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
        
        // Ensure the separate hitbox starts OFF
        if (attackHitbox) attackHitbox.SetActive(false);
        if (bossRenderer) _originalColor = bossRenderer.material.color;
    }

    void Update() {
        if (showParryWindowDebug && bossRenderer) {
            bossRenderer.material.color = _isParryable ? Color.yellow : _originalColor;
        }
    }

    private void OnTriggerEnter(Collider other) {
        // FAIL-SAFE: If the script says we aren't attacking, ignore the trigger
        // This is crucial for separate GameObjects!
        if (!isAttacking || _hasDealtDamageThisSwing) return;

        if (((1 << other.gameObject.layer) & playerLayer) != 0) {
            CinematicParry playerParry = other.GetComponentInParent<CinematicParry>();
            PlayerHealth health = other.GetComponentInParent<PlayerHealth>();

            // If player is parrying, ignore the hit
            if (playerParry != null && playerParry.IsParrying) return;

            if (health != null && !health.IsInvulnerable) {
                _hasDealtDamageThisSwing = true;
                health.TakeDamage(10f);
                _isParryable = false; 
            }
        }
    }

    public void ForceResetAttack() {
        isAttacking = false; 
        _isParryable = false;
        _hasDealtDamageThisSwing = false;
        
        if (attackHitbox) attackHitbox.SetActive(false);
        if (bossRenderer) bossRenderer.material.color = _originalColor;
        
        if (_rb != null && !_rb.isKinematic) _rb.linearVelocity = Vector3.zero;
    }

    public void OnGetParried() {
        ForceResetAttack(); 

        if (_animator) {
            _animator.Play("GotHit", 0, 0f); 
            _animator.SetTrigger("GotHit"); 
        }

        if (_rb != null) {
            _rb.isKinematic = false;
            _rb.linearVelocity = Vector3.zero; 
            Vector3 pushDirection = -transform.forward;
            _rb.AddForce(pushDirection * knockbackForce, ForceMode.Impulse);
            Invoke(nameof(ReturnRBInternal), 0.4f);
        }
    }

    private void ReturnRBInternal() {
        if (_rb) { _rb.linearVelocity = Vector3.zero; _rb.isKinematic = true; }
    }

    // --- ANIMATION EVENTS ---
    public void AE_StartAttack() { 
        isAttacking = true; 
        _isParryable = true; 
        _hasDealtDamageThisSwing = false; 
        if (attackHitbox) attackHitbox.SetActive(true); 
    }

    public void AE_EndAttack() => ForceResetAttack();

    public void AE_PlayParticleOnBody() { if (bodyParticle != null) bodyParticle.Play(); }
}