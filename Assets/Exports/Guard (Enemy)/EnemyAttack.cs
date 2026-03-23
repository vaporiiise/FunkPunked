using UnityEngine;

public class EnemyAttack : MonoBehaviour
{
    [Header("Detection")]
    public LayerMask playerLayer;
    public GameObject attackHitbox;

    [Header("Parry Reaction")]
    public float knockbackForce = 10f;
    public ParticleSystem bodyParticle; 

    [Header("Debug Settings")]
    public bool showParryWindowDebug = true;
    public Renderer bossRenderer; 

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
        if (showParryWindowDebug && bossRenderer) {
            bossRenderer.material.color = _isParryable ? Color.yellow : _originalColor;
        }
    }

    private void OnTriggerEnter(Collider other) {
        if (_hasDealtDamageThisSwing) return;

        if (((1 << other.gameObject.layer) & playerLayer) != 0) {
            CinematicParry playerParry = other.GetComponentInParent<CinematicParry>();

            if (playerParry != null) {
                if (playerParry.IsParrying && _isParryable) {
                    Debug.Log("<color=cyan>[SYSTEM] Parry Success Detected!</color>");
                    _hasDealtDamageThisSwing = true;
                    playerParry.TriggerSuccessfulParry(_animator);
                    return; 
                }
                else if (playerParry.IsParrying && !_isParryable) {
                    Debug.Log("<color=orange>[SYSTEM] Player parried, but Boss was NOT in AE_StartAttack window yet!</color>");
                }
            }

            PlayerHealth health = other.GetComponentInParent<PlayerHealth>();
            if (health != null && !health.IsInvulnerable) {
                _hasDealtDamageThisSwing = true;
                health.TakeDamage(10f);
                Debug.Log("<color=red>[BOSS] Hit Player!</color>");
            }
        }
    }

    public void OnGetParried() {
        AE_EndAttack(); 

        if (_animator) {
            _animator.Play("GotHit", 0, 0f); 
            _animator.SetTrigger("GotHit"); 
        }

        if (_rb != null) {
            Vector3 pushDirection = -transform.forward;
            _rb.linearVelocity = Vector3.zero; 
            _rb.AddForce(pushDirection * knockbackForce, ForceMode.Impulse);
        }
    }


    public void AE_StartAttack() { 
        _isParryable = true; 
        _hasDealtDamageThisSwing = false; 
        if (attackHitbox) attackHitbox.SetActive(true); 
        Debug.Log("<color=yellow>[EVENT] Boss is now PARRYABLE</color>");
    }

    public void AE_EndAttack() { 
        _isParryable = false; 
        if (attackHitbox) attackHitbox.SetActive(false); 
        Debug.Log("<color=white>[EVENT] Boss is NO LONGER parryable</color>");
    }

    public void AE_PlayParticleOnBody() {
        if (bodyParticle != null) {
            bodyParticle.Play();
        }
    }
}