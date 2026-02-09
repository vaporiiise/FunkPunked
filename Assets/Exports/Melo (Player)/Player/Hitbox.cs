using UnityEngine;

public class Hitbox : MonoBehaviour
{
    private PlayerController _playerController;
    private PlayerCombo _playerCombo;

    private void Start()
    {
        _playerController = GetComponentInParent<PlayerController>();
        _playerCombo = GetComponentInParent<PlayerCombo>();
    }

    private void OnTriggerEnter(Collider other)
    {
        if(other.CompareTag("Enemy"))
        {
            if (_playerCombo != null) _playerCombo.AddComboHit();

            float damageToDeal = 0f;
            if (_playerController != null) damageToDeal = _playerController.GetCurrentDamage();

            Enemy enemy = other.GetComponent<Enemy>();
            if (enemy != null)
            {
                enemy.TakeHit(transform.root); 
            }
        }
    }
}