using UnityEngine;

public class BossAnimationHandler : MonoBehaviour
{
    private Animator _animator;
    private BossAI _bossAI;

    void Awake()
    {
        _animator = GetComponentInChildren<Animator>();
        _bossAI = GetComponent<BossAI>();
    }

    public void UpdateMovement(Vector3 localDir, bool isRunning, BossAI.BossState state)
    {
        if (_animator == null) return;

        if (state == BossAI.BossState.Staggered)
        {
            _animator.SetFloat("VelocityX", 0, 0.1f, Time.deltaTime);
            _animator.SetFloat("VelocityZ", 0, 0.1f, Time.deltaTime);
            return;
        }

        float targetX = (Mathf.Abs(localDir.x) > 0.01f) ? Mathf.Sign(localDir.x) : 0;
        float targetZ = (Mathf.Abs(localDir.z) > 0.01f) ? Mathf.Sign(localDir.z) : 0;

        _animator.SetBool("IsRunning", isRunning);
        _animator.SetFloat("VelocityX", targetX, 0.05f, Time.deltaTime);
        _animator.SetFloat("VelocityZ", targetZ, 0.05f, Time.deltaTime);
    }

    public void TriggerSpecificAttack(int index)
    {
        if (_animator == null) return;
        _animator.SetInteger("AttackIndex", index);
        _animator.SetTrigger("Attack");
    }

    public void TriggerHit(int intensity)
    {
        if (_animator == null) return;
        _animator.SetInteger("HitIntensity", intensity);
        _animator.SetTrigger("GetHit");
        if (intensity == 2) _animator.SetTrigger("Stagger");
    }

    public void EndStagger() 
    {
        if (_animator != null) _animator.SetBool("IsStaggered", false);
    }

    public void ResetMovement()
    {
        if (_animator == null) return;
        _animator.SetFloat("VelocityX", 0);
        _animator.SetFloat("VelocityZ", 0);
    }

    public void AE_OnActionFinished()
    {
        if (_bossAI != null) _bossAI.OnAnimationActionComplete();
    }
}