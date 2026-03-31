using UnityEngine;

public class BossAnimationHandler : MonoBehaviour
{
    public Animator _animator;
    private BossAI _bossAI;

    void Awake() {
        _animator = GetComponentInChildren<Animator>();
        _bossAI = GetComponent<BossAI>();
    }

    public void UpdateMovement(Vector3 localDir, bool isRunning, BossAI.BossState state) {
        if (_animator == null) return;
        float x = (Mathf.Abs(localDir.x) > 0.1f) ? Mathf.Sign(localDir.x) : 0f;
        float z = (Mathf.Abs(localDir.z) > 0.1f) ? Mathf.Sign(localDir.z) : 0f;
        _animator.SetFloat("VelocityX", x);
        _animator.SetFloat("VelocityZ", z);
    }

    public void TriggerSpecificAttack(int index) {
        if (_animator == null) return;
        _animator.SetInteger("AttackIndex", index);
        _animator.SetTrigger("Attack");
    }

    public void TriggerHit() {
        if (_animator == null) return;
        _animator.SetTrigger("GotHit");
    }

    public void TriggerStaggerOnly() {
        if (_animator == null) return;
        _animator.SetTrigger("Stagger"); 
        _animator.SetBool("IsStaggered", true); 
    }

    public void EndStagger() {
        if (_animator == null) return;
        _animator.SetBool("IsStaggered", false);
    }

    public void ResetMovement() {
        if (_animator == null) return;
        _animator.SetFloat("VelocityX", 0);
        _animator.SetFloat("VelocityZ", 0);
    }

    public void AE_OnActionFinished() {
        if (_bossAI) _bossAI.OnAnimationActionComplete();
    }
}