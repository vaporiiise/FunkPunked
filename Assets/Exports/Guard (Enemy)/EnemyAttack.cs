using UnityEngine;

public class EnemyAttack : MonoBehaviour
{
    [Header("Detection")]
    public LayerMask playerLayer;
    public GameObject attackHitbox;

    [Header("VFX Settings")]
    public ParticleSystem bodyPartParticle;
    public Transform bodyPartTransform;

    private Animator _animator;
    private bool _isParryable = false;
    private bool _hasDealtDamageThisSwing = false;

    void Awake() 
    {
        _animator = GetComponent<Animator>();
        if (attackHitbox) 
        {
            attackHitbox.SetActive(false);
            if (!attackHitbox.CompareTag("EnemyAttack"))
            {
                Debug.LogWarning("Hitbox on " + name + " is missing the EnemyAttack tag!");
            }
        }
    }

    private void OnTriggerEnter(Collider other) 
    {
        if (_hasDealtDamageThisSwing) return;

        if (((1 << other.gameObject.layer) & playerLayer) != 0) 
        {
            float distance = Vector3.Distance(transform.position, other.transform.position);
            if (distance > 5f) return;

            CinematicParry playerParry = other.GetComponentInParent<CinematicParry>();

            if (playerParry != null && playerParry.IsParrying && _isParryable) 
            {
                _hasDealtDamageThisSwing = true;
                playerParry.TriggerSuccessfulParry(_animator);
                AE_EndAttack();
                return;
            }

            PlayerHealth health = other.GetComponentInParent<PlayerHealth>();
            if (health != null) 
            {
                _hasDealtDamageThisSwing = true;
                health.TakeDamage(10f);
            }
        }
    }

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

    public void AE_PlayParticleOnBody() 
    {
        if (bodyPartParticle != null && bodyPartTransform != null) 
        {
            ParticleSystem effect = Instantiate(bodyPartParticle, bodyPartTransform.position, bodyPartTransform.rotation);
            effect.Play();
            Destroy(effect.gameObject, effect.main.duration);
        }
    }

    private void OnDisable()
    {
        AE_EndAttack();
    }
}