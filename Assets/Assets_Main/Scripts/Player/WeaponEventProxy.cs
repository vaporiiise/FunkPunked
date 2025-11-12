using UnityEngine;

public class WeaponEventProxy : MonoBehaviour
{
    public WeaponCollider weaponCollider; // assign the child weapon

    public void EnableWeaponCollider() => weaponCollider?.EnableDamage();
    public void DisableWeaponCollider() => weaponCollider?.DisableDamage();
   // public void PlaySwingSFX() => weaponCollider?.owner?.RuntimePlaySwingSFX();
}