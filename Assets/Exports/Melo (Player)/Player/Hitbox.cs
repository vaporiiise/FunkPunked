using UnityEngine;
using System.Collections.Generic;

public class Hitbox : MonoBehaviour
{
    private PlayerController _playerController;
    // We make this optional in case you don't have a combo script yet
    private MonoBehaviour _playerCombo; 

    [Header("Hit Stop Settings")]
    public float duration = 0.07f;
    [Range(0f, 1f)] public float scale = 0.01f;

    private List<Collider> _hitEnemies = new List<Collider>();

    private void Awake()
    {
        // Safety: Search root in case of deep nesting
        _playerController = GetComponentInParent<PlayerController>();
        
        // Trying to find any component that might handle combos
        // Replace 'MonoBehaviour' with your actual Combo Script class name if it's different
        _playerCombo = GetComponentInParent<PlayerController>(); 
    }

    private void OnEnable() => _hitEnemies.Clear();

    private void OnTriggerEnter(Collider other)
    {
        if (other.CompareTag("Enemy"))
        {
            if (_hitEnemies.Contains(other)) return;
            _hitEnemies.Add(other);

            // Safety check for Combo script
            // If you have a specific "AddComboHit" method, ensure the class name matches
            // _playerCombo?.AddComboHit();
            
            Enemy enemy = other.GetComponent<Enemy>();
            if (enemy != null) enemy.TakeHit(transform.root);

            // This triggers the screen freeze/hitstop in the new PlayerController
            if (_playerController != null)
                _playerController.TriggerHitStop(duration, scale);
        }
    }
}