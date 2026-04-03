using UnityEngine;

public class CombatVFXController : MonoBehaviour
{
    [Header("References")]
    [Tooltip("The script that handles parrying logic")]
    public CinematicParry parryScript;

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

    void Awake()
    {
        // Automatically try to find the parry script if it wasn't assigned in inspector
        if (parryScript == null)
        {
            parryScript = GetComponent<CinematicParry>();
        }
    }

    void Start()
    {
        // Ensure fever VFX starts off
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
        // We also check if parrying here to hide Fever VFX during parry sequences
        bool shouldBeActive = PlayerCombo.isFeverActive;
        
        if (parryScript != null && parryScript.IsParrying)
            shouldBeActive = false;

        if (feverVFXObject.activeSelf != shouldBeActive)
        {
            feverVFXObject.SetActive(shouldBeActive);
        }
    }

    public void PlayBasicAttack()
    {
        // Block logic is now handled inside SpawnVFX, but we keep the Fever check for safety
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
        // --- THE PARRY CHECK ---
        // If the parry script says we are parrying or in a cinematic, stop here.
        if (parryScript != null && parryScript.IsParrying)
        {
            return;
        }

        if (prefab != null && target != null)
        {
            Instantiate(prefab, target.position, target.rotation);
        }
    }
}