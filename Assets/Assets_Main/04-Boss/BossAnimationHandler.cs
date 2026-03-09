using UnityEngine;

public class BossAnimationHandler : MonoBehaviour
{
    private Animator _animator;
    private BossAI _bossAI;

    [Header("Smoothing")]
    public float dampTime = 0.05f; // Keep low for snappy binary movement

    void Awake()
    {
        _animator = GetComponentInChildren<Animator>();
        _bossAI = GetComponent<BossAI>();
    }

    public void UpdateMovement(Vector3 localDir, bool isRunning, BossAI.BossState state)
    {
        if (_animator == null) return;

        float targetX = 0;
        float targetZ = 0;

        // Binary logic: If we move at all, snap to 1.0 or -1.0
        if (state == BossAI.BossState.Chasing || state == BossAI.BossState.Strafing || state == BossAI.BossState.Retreating)
        {
            if (Mathf.Abs(localDir.x) > 0.01f) targetX = Mathf.Sign(localDir.x);
            if (Mathf.Abs(localDir.z) > 0.01f) targetZ = Mathf.Sign(localDir.z);
        }

        _animator.SetBool("IsRunning", isRunning);
        _animator.SetFloat("VelocityX", targetX, dampTime, Time.deltaTime);
        _animator.SetFloat("VelocityZ", targetZ, dampTime, Time.deltaTime);
    }

    public void TriggerHit(int intensity)
    {
        // 0: Subtle, 1: Normal, 2: Stagger
        _animator.SetInteger("HitIntensity", intensity);
        _animator.SetTrigger("GetHit");
        
        if (intensity == 2) _animator.SetBool("IsStaggered", true);
    }

    public void EndStagger() => _animator.SetBool("IsStaggered", false);

    public void TriggerRandomAttack()
    {
        _animator.SetInteger("AttackIndex", Random.Range(0, 2));
        _animator.SetTrigger("Attack");
    }

    public void ResetMovement()
    {
        _animator.SetFloat("VelocityX", 0);
        _animator.SetFloat("VelocityZ", 0);
    }

    // Called by Animation Event at end of Attack or Stagger clips
    public void AE_OnActionFinished()
    {
        if (_bossAI != null) _bossAI.OnAnimationActionComplete();
    }
}