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

    [Header("Special Attack (Fever)")]
    [Tooltip("Drag the VFX object ALREADY in your hierarchy/player here")]
    public GameObject feverVFXObject; 

    [Header("Vertical Attack")]
    public GameObject verticalVFX;
    public Transform verticalSpawnPoint;

    void Start()
    {
        // Ensure it starts off
        if (feverVFXObject != null)
            feverVFXObject.SetActive(false);
    }

    void Update()
    {
        HandleFeverVFX();
    }

    private void HandleFeverVFX()
    {
        if (feverVFXObject == null) return;

        // Sync the object's active state directly with the fever boolean
        if (feverVFXObject.activeSelf != PlayerCombo.isFeverActive)
        {
            feverVFXObject.SetActive(PlayerCombo.isFeverActive);
        }
    }

    public void PlayBasicAttack()
    {
        if (PlayerCombo.isFeverActive) return; 

        SpawnVFX(_useFirstBasic ? basicVFX_1 : basicVFX_2, handTransform);
        _useFirstBasic = !_useFirstBasic;
    }

    public void PlayBasicAttackInverse()
    {
        if (PlayerCombo.isFeverActive) return;

        SpawnVFX(_useFirstBasicI ? basicVFX_1I : basicVFX_2I, handTransformI);
        _useFirstBasicI = !_useFirstBasicI;
    }

    public void PlayVerticalAttack()
    {
        SpawnVFX(verticalVFX, verticalSpawnPoint);
    }

    private void SpawnVFX(GameObject prefab, Transform target)
    {
        if (prefab != null && target != null)
        {
            Instantiate(prefab, target.position, target.rotation);
        }
    }
}