using UnityEngine;

public class CombatVFXController : MonoBehaviour
{
    [Header("Basic Attack (Alternating)")]
    public GameObject basicVFX_1;
    public GameObject basicVFX_2;
    public Transform handTransform;
    private bool _useFirstBasic = true;
    
    [Header("Basic Attack Inversed (Alternating)")]
    public GameObject basicVFX_1I;
    public GameObject basicVFX_2I;
    public Transform handTransformI;
    private bool _useFirstBasicI = true;

    [Header("Special Attack")]
    public GameObject specialVFX;
    public Transform specialSpawnPoint;

    [Header("Vertical Attack")]
    public GameObject verticalVFX;
    public Transform verticalSpawnPoint;
    
    public void PlayBasicAttack()
    {
        GameObject effectToSpawn = _useFirstBasic ? basicVFX_1 : basicVFX_2;
        if (effectToSpawn != null)
        {
            Instantiate(effectToSpawn, handTransform.position, handTransform.rotation);
        }
        else 
        {
            Debug.LogError("The VFX prefab slot is EMPTY in the inspector!");
        }

        _useFirstBasic = !_useFirstBasic;
    }
    
    public void PlayBasicAttackInverse()
    {
        GameObject effectToSpawn = _useFirstBasicI ? basicVFX_1I : basicVFX_2I;
        
        if (effectToSpawn != null)
        {
            Instantiate(effectToSpawn, handTransformI.position, handTransformI.rotation);
        }
        else 
        {
            Debug.LogError("The VFX prefab slot is EMPTY in the inspector!");
        }

        _useFirstBasicI = !_useFirstBasicI;
    }


    public void PlaySpecialAttack()
    { 
        if (specialVFX != null)
        {
            Instantiate(specialVFX, specialSpawnPoint.position, specialSpawnPoint.rotation);
        }
    }
    
    public void PlayVerticalAttack()
    {
        if (verticalVFX != null)
        {
            Instantiate(verticalVFX, verticalSpawnPoint.position, verticalSpawnPoint.rotation);
        }
    }
}
