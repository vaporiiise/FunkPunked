using UnityEngine;

public class PlayerAnimationHandler : MonoBehaviour
{
    private Animator animator;

    [Header("Locomotion")]
    [SerializeField] private float speedDamp = 0.1f;

    void Awake()
    {
        animator = GetComponent<Animator>();
    }

    public void UpdateMovement(float normalizedSpeed)
    {
        animator.SetFloat("Speed", normalizedSpeed, speedDamp, Time.deltaTime);
        animator.SetBool("IsMoving", normalizedSpeed > 0.05f);
    }

    public void PlayMove()
    {
        animator.SetBool("IsMoving", true);
        animator.CrossFadeInFixedTime("Locomotion", 0.1f);
        ResetComboWindow();
    }

    public void PlayDashForward()
    {
        animator.CrossFadeInFixedTime("DashForward", 0.05f);
        ResetComboWindow();
    }

    public void PlayDashBack()
    {
        animator.CrossFadeInFixedTime("DashBackward", 0.05f);
        ResetComboWindow();
    }

    public void PlayAttack1() { animator.CrossFadeInFixedTime("Attack1", 0.05f); ResetComboWindow(); }
    public void PlayAttack2() { animator.CrossFadeInFixedTime("Attack2", 0.05f); ResetComboWindow(); }
    public void PlayAttack3() { animator.CrossFadeInFixedTime("Attack3", 0.05f); ResetComboWindow(); }
    public void PlayAttack4() { animator.CrossFadeInFixedTime("Attack4", 0.05f); ResetComboWindow(); }
    public void PlayAttack5() { animator.CrossFadeInFixedTime("Attack5", 0.05f); ResetComboWindow(); }
    public void PlayAttack6() { animator.CrossFadeInFixedTime("Attack6", 0.05f); ResetComboWindow(); }

    public void OpenComboWindow() => animator.SetBool("CanNextCombo", true);
    public void CloseComboWindow() => animator.SetBool("CanNextCombo", false);
    public void ResetComboWindow() => animator.SetBool("CanNextCombo", false);
}