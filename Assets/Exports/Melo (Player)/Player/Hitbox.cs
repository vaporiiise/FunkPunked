using UnityEngine;
using System.Collections.Generic;

public class Hitbox : MonoBehaviour
{
    private PlayerController _playerController;
    private PlayerAnimationHandler _animHandler;
    private AnimationAudioManager _audioManager; 
    [Header("Hit Stop Settings")]
    public float duration = 0.07f;
    [Range(0f, 1f)] public float scale = 0.01f;

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
}