using UnityEngine;

public class EnemyAttack : MonoBehaviour
{
    [Header("Detection")]
    public LayerMask playerLayer; // Set this to "Player" in Inspector
    public GameObject attackHitbox;

    [Header("VFX Settings")]
    public ParticleSystem bodyPartParticle; // Drag your VFX prefab here
    public Transform bodyPartTransform;     // Drag a bone (e.g., Hand/Chest) here

    private Animator _animator;
    private bool _isParryable = false;
    private bool _hasDealtDamageThisSwing = false;

    void Awake() 
    {
        _animator = GetComponent<Animator>();
        if (attackHitbox) attackHitbox.SetActive(false);
    }

    private void OnTriggerEnter(Collider other) 
    {
        if (_hasDealtDamageThisSwing) return;

        // 1. Team Check: Only process if the hit object is on the Player Layer
        if (((1 << other.gameObject.layer) & playerLayer) != 0) 
        {
            CinematicParry playerParry = other.GetComponentInParent<CinematicParry>();

            // Parry Logic
            if (playerParry != null && playerParry.IsParrying && _isParryable) 
            {
                _hasDealtDamageThisSwing = true;
                playerParry.TriggerSuccessfulParry(_animator);
                AE_EndAttack();
                return;
            }

            // Damage Logic
            PlayerHealth health = other.GetComponentInParent<PlayerHealth>();
            if (health != null) 
            {
                _hasDealtDamageThisSwing = true;
                health.TakeDamage(10f);
            }
        }
    }

    // --- ANIMATION EVENTS ---

    public void AE_StartAttack() 
    { 
        _isParryable = true; 
        _hasDealtDamageThisSwing = false; 
        if (attackHitbox) attackHitbox.SetActive(true); 
    }

    public void AE_EndAttack() 
    { 
        _isParryable = false; 
        if (attackHitbox) attackHitbox.SetActive(false); 
    }

    // This is the function you call from the Animation Window
    public void AE_PlayParticleOnBody() 
    {
        if (bodyPartParticle != null && bodyPartTransform != null) 
        {
            // Position the particle exactly on the hand/body part
            ParticleSystem effect = Instantiate(bodyPartParticle, bodyPartTransform.position, bodyPartTransform.rotation);
            effect.Play();
            
            // Cleanup: Destroy the particle object after it finishes playing
            Destroy(effect.gameObject, effect.main.duration);
        }
    }
}