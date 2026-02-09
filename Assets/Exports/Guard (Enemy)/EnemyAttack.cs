using UnityEngine;
using System.Collections;

public class EnemyAttack : MonoBehaviour
{
    [SerializeField] private GameObject goldenFlashVFX;
    [SerializeField] private GameObject parryHitbox;
    [SerializeField] private float knockbackForce = 10f;
    
    [Header("Audio")]
    [SerializeField] private AudioSource enemyAudioSource;
    [SerializeField] private AudioClip flashSound;

    private Animator _animator;
    private Rigidbody _rb;
    private bool _isParryable = false;
    public bool IsParryable => _isParryable;

    void Awake()
    {
        _animator = GetComponent<Animator>();
        _rb = GetComponent<Rigidbody>();
    }

    public void GetParried(Vector3 playerPosition)
    {
        if (_animator) _animator.SetTrigger("GotParried");

        AE_EndAttack();

        if (_rb)
        {
            Vector3 pushDirection = (transform.position - playerPosition).normalized;
            pushDirection.y = 0; 
            _rb.AddForce(pushDirection * knockbackForce, ForceMode.Impulse);
        }
    }

    public void AE_ShowFlash()
    {
        Debug.Log("Enemy Golden Flash!");
        if(goldenFlashVFX) goldenFlashVFX.SetActive(true);
    
        if (enemyAudioSource && flashSound)
        {
            enemyAudioSource.PlayOneShot(flashSound);
        }
    }
    
    public void AE_StartAttack() 
    {
        Debug.Log("Hitbox is now ACTIVE"); 
        goldenFlashVFX?.SetActive(false);
        _isParryable = true;
        parryHitbox.SetActive(true);
    }

    public void AE_EndAttack() 
    {
        _isParryable = false;
        parryHitbox.SetActive(false);
    }
}
