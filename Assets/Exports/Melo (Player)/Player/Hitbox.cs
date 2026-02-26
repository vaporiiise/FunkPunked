using UnityEngine;
using System.Collections.Generic;

public class Hitbox : MonoBehaviour
{
    private PlayerController _playerController;
    private PlayerCombo _playerCombo;

    [Header("Hit Stop Settings")]
    public float duration = 0.07f;
    [Range(0f, 1f)] public float scale = 0.01f;

    private List<Collider> _hitEnemies = new List<Collider>();

    private void Awake()
    {
        _playerController = GetComponentInParent<PlayerController>();
        _playerCombo = GetComponentInParent<PlayerCombo>();
    }

    private void OnEnable() => _hitEnemies.Clear();

    private void OnTriggerEnter(Collider other)
    {
        if (other.CompareTag("Enemy"))
        {
            if (_hitEnemies.Contains(other)) return;
            _hitEnemies.Add(other);

            if (_playerCombo != null) _playerCombo.AddComboHit();
            
            Enemy enemy = other.GetComponent<Enemy>();
            if (enemy != null) enemy.TakeHit(transform.root);

            if (_playerController != null)
                _playerController.TriggerHitStop(duration, scale);
        }
    }
}