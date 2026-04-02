using UnityEngine;

public class EnemyAnimationController : MonoBehaviour
{
    [Header("Combat VFX")]
    public GameObject flashEffect;      // The "Yellow Flash" before a parryable attack
    public GameObject attackHitbox;    // The hitbox enabled during the swing
    public GameObject deathVFX;        // Smoke, sparks, or blood on death

    private bool _isParryable = false;
    public bool IsParryable => _isParryable;

    private Enemy _enemy;
    private Rigidbody _rb;

    void Awake()
    {
        // Get references from the parent object (where the AI and Health live)
        _enemy = GetComponentInParent<Enemy>();
        _rb = GetComponentInParent<Rigidbody>();
        
        // Ensure effects are off at start
        if (flashEffect) flashEffect.SetActive(false);
        if (attackHitbox) attackHitbox.SetActive(false);
    }

    // --- ATTACK ANIMATION EVENTS ---

    public void AnimEvent_TriggerFlash()
    {
        // Visual cue for Melo to get ready to parry
        if (flashEffect) flashEffect.SetActive(true);
    }

    public void AnimEvent_StartParryWindow()
    {
        if (flashEffect) flashEffect.SetActive(false);
        _isParryable = true;
        if (attackHitbox) attackHitbox.SetActive(true);
    }

    public void AnimEvent_EndParryWindow()
    {
        _isParryable = false;
        if (attackHitbox) attackHitbox.SetActive(false);
    }

    // --- DEATH ANIMATION EVENTS ---

    public void AnimEvent_OnDeath()
    {
        // Triggered at the start of the Die animation
        if (deathVFX) 
        {
            Instantiate(deathVFX, transform.position, Quaternion.identity);
        }

        // Ensure all hitboxes are killed so the corpse isn't "dangerous"
        if (attackHitbox) attackHitbox.SetActive(false);
        _isParryable = false;
    }

    public void AnimEvent_FinalDeathStep()
    {
        // Optional: Triggered at the very last frame of the death animation
        // This is good if you want to swap the model for a ragdoll or static prop
        Debug.Log("Enemy has finished the death animation sequence.");
    }
}