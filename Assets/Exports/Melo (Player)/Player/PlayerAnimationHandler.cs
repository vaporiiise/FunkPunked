using UnityEngine;

public class PlayerAnimationHandler : MonoBehaviour
{
    private Animator animator;

    void Awake() => animator = GetComponent<Animator>();

    public bool IsFlinching() => animator.GetCurrentAnimatorStateInfo(0).IsName("GotHit");

    public void UpdateMovement(float speed) => animator.SetFloat("Speed", speed, 0.1f, Time.deltaTime);

    public void SetComboWindow(bool isOpen) => animator.SetBool("CanNextCombo", isOpen);

    public void PlayGotHit() => animator.CrossFadeInFixedTime("GotHit", 0.02f);
    
    public void PlayMove() => animator.CrossFadeInFixedTime("Locomotion", 0.1f);

    public void PlayAttack(int step) => animator.CrossFadeInFixedTime("Attack" + step, 0.05f);

    public void PlayDashForward() => animator.CrossFadeInFixedTime("DashForward", 0.05f);
    
    public void PlayDeath() => animator.CrossFadeInFixedTime("Death", 0.05f);
    
    public void PlayDodge() => animator.CrossFadeInFixedTime("Dodge", 0.05f);

}