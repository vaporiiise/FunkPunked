using UnityEngine;

public class PlayerAnimationHandler : MonoBehaviour
{
    private Animator animator;

    [Header("Locomotion")]
    [SerializeField] private float speedDamp = 0.1f;

    public bool IsComboWindowOpen =>
        animator.GetBool("CanNextCombo");

    void Awake()
    {
        animator = GetComponent<Animator>();
    }
    

    public void UpdateMovement(float normalizedSpeed)
    {
        animator.SetFloat("Speed", normalizedSpeed, speedDamp, Time.deltaTime);
    }

    public void SetAttacking(bool value)
    {
        animator.SetBool("IsAttacking", value);
    }

    // =========================
    // COMBAT
    // =========================

    public void PlayAttack1() { animator.Play("Attack1"); ResetComboWindow(); }
    public void PlayAttack2() { animator.Play("Attack2"); ResetComboWindow(); }
    public void PlayAttack3() { animator.Play("Attack3"); ResetComboWindow(); }
    public void PlayAttack4() { animator.Play("Attack4"); ResetComboWindow(); }
    public void PlayAttack5() { animator.Play("Attack5"); ResetComboWindow(); }
    public void PlayAttack6() { animator.Play("Attack6"); ResetComboWindow(); }

    // =========================
    // COMBO WINDOW
    // =========================

    public void OpenComboWindow()
    {
        animator.SetBool("CanNextCombo", true);
    }

    public void CloseComboWindow()
    {
        animator.SetBool("CanNextCombo", false);
    }

    public void ResetComboWindow()
    {
        animator.SetBool("CanNextCombo", false);
    }
}