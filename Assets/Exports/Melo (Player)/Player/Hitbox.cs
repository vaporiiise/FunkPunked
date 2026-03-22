using UnityEngine;
using System.Collections.Generic;

public class Hitbox : MonoBehaviour
{
    private PlayerController _playerController;
    private PlayerAnimationHandler _animHandler;

    [Header("Hit Stop Settings")]
    public float duration = 0.07f;
    [Range(0f, 1f)] public float scale = 0.01f;

    private List<Collider> _hitEnemies = new List<Collider>();

    private void Awake()
    {
        _playerController = GetComponentInParent<PlayerController>();
        _animHandler = GetComponentInParent<PlayerAnimationHandler>();
    }

    private void OnEnable()
    {
        _hitEnemies.Clear();
    }

    private void Update()
    {
        // Safety: If the player gets hit, immediately disable the hitbox GameObject
        if (_animHandler != null && _animHandler.IsFlinching())
        {
            gameObject.SetActive(false);
        }
    }

    private void OnTriggerEnter(Collider other)
    {
        // Don't process hits if the player is flinching
        if (_animHandler != null && _animHandler.IsFlinching()) return;

        if (other.CompareTag("Enemy"))
        {
            if (_hitEnemies.Contains(other)) return;
            _hitEnemies.Add(other);
            
            Enemy enemy = other.GetComponent<Enemy>();
            if (enemy != null) enemy.TakeHit(transform.root);

            if (_playerController != null)
                _playerController.TriggerHitStop(duration, scale);
        }
    }
}