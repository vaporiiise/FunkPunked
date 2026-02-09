using UnityEngine;

public class EnemyAnimationController : MonoBehaviour
{
    [Header("Settings")]
    public GameObject flashEffect;
    public GameObject attackHitbox;
    
    private bool _isParryable = false;
    public bool IsParryable => _isParryable;


    public void AnimEvent_TriggerFlash()
    {
        if (flashEffect) flashEffect.SetActive(true);
    }

    public void AnimEvent_StartParryWindow()
    {
        if (flashEffect) flashEffect.SetActive(false);
        _isParryable = true;
        attackHitbox.SetActive(true);
    }

    public void AnimEvent_EndParryWindow()
    {
        _isParryable = false;
        attackHitbox.SetActive(false);
    }
}
