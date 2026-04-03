using UnityEngine;
using System.Collections;
using System.Collections.Generic;

public class Hitbox : MonoBehaviour
{
    private PlayerController _playerController;
    private PlayerAnimationHandler _animHandler;
    private AnimationAudioManager _audioManager; 

    [Header("Hit Stop Settings")]
    public float duration = 0.07f;
    [Range(0f, 1f)] public float scale = 0.01f;

    [Header("VFX Settings")]
    public GameObject hitVFXPrefab; // The spark/slash effect
    public float vfxDelay = 0.05f;

    private List<Collider> _hitEnemies = new List<Collider>();

    private void Awake()
    {
        _playerController = GetComponentInParent<PlayerController>();
        _animHandler = GetComponentInParent<PlayerAnimationHandler>();
        _audioManager = GetComponentInParent<AnimationAudioManager>();
    }

    private void OnEnable()
    {
        _hitEnemies.Clear();
    }

    private void Update()
    {
        if (_animHandler != null && _animHandler.IsFlinching())
        {
            gameObject.SetActive(false);
        }
    }

    private void OnTriggerEnter(Collider other)
    {
        if (_animHandler != null && _animHandler.IsFlinching()) return;

        if (other.CompareTag("Enemy"))
        {
            if (_hitEnemies.Contains(other)) return;
            _hitEnemies.Add(other);
            
            Enemy enemy = other.GetComponent<Enemy>();
            if (enemy != null) 
            {
                // 1. Calculate Hit Point
                Vector3 hitPoint = other.ClosestPoint(transform.position);

                // 2. Spawn Delayed VFX
                StartCoroutine(SpawnDelayedVFX(hitPoint));

                // 3. Logic as usual
                enemy.TakeHit(transform.root);
                PlayerCombo comboScript = GetComponentInParent<PlayerCombo>();
                if (comboScript != null)
                {
                    comboScript.AddComboHit();
                }

                if (_audioManager != null)
                {
                    _audioManager.PlaySound("hit"); 
                }
            }
        }
    }

    private IEnumerator SpawnDelayedVFX(Vector3 position)
    {
        yield return new WaitForSeconds(vfxDelay);

        if (hitVFXPrefab != null)
        {
            // Instantiate at the point of contact
            GameObject vfx = Instantiate(hitVFXPrefab, position, Quaternion.identity);
            
            // Auto-cleanup after 2 seconds
            Destroy(vfx, 2f);
        }
    }
}