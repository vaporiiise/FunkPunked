using UnityEngine;

public class PlayerAnimationHandler : MonoBehaviour
{
    private Animator animator;

    [Header("Locomotion Settings")]
    [SerializeField] private float speedDamp = 0.1f;

    void Awake()
    {
        animator = GetComponent<Animator>();
    }

    public bool IsFlinching()
    {
        // Returns true if currently in the "GotHit" state
        return animator.GetCurrentAnimatorStateInfo(0).IsName("GotHit");
    }

    public void UpdateMovement(float normalizedSpeed)
    {
        animator.SetFloat("Speed", normalizedSpeed, speedDamp, Time.deltaTime);
        animator.SetBool("IsMoving", normalizedSpeed > 0.05f);
    }

    public void PlayGotHit()
    {
        animator.CrossFadeInFixedTime("GotHit", 0.02f);
        ResetComboWindow();
    }

    public void PlayMove()
    {
        animator.SetBool("IsMoving", true);
        animator.CrossFadeInFixedTime("Locomotion", 0.1f);
        ResetComboWindow();
    }

    public void PlayAttack1() { animator.CrossFadeInFixedTime("Attack1", 0.05f); ResetComboWindow(); }
    public void PlayAttack2() { animator.CrossFadeInFixedTime("Attack2", 0.05f); ResetComboWindow(); }
    public void PlayAttack3() { animator.CrossFadeInFixedTime("Attack3", 0.05f); ResetComboWindow(); }
    public void PlayAttack4() { animator.CrossFadeInFixedTime("Attack4", 0.05f); ResetComboWindow(); }
    public void PlayAttack5() { animator.CrossFadeInFixedTime("Attack5", 0.05f); ResetComboWindow(); }
    public void PlayAttack6() { animator.CrossFadeInFixedTime("Attack6", 0.05f); ResetComboWindow(); }

    public void PlayDashForward() => animator.CrossFadeInFixedTime("DashForward", 0.05f);
    public void PlayDashBack() => animator.CrossFadeInFixedTime("DashBackward", 0.05f);

    public void ResetComboWindow() => animator.SetBool("CanNextCombo", false);
}