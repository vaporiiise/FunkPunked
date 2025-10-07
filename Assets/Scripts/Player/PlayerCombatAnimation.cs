using UnityEngine;

public class PlayerCombatAnimation : MonoBehaviour
{
    public Animator animator;
    private int attackIndex = 0;
    private float comboTimer;
    public float comboResetTime = 1f; // time before combo resets

    void Update()
    {
        // Walk check
        float move = Input.GetAxisRaw("Horizontal");
        animator.SetBool("isWalking", move != 0);

        // Attack chain
        if (Input.GetMouseButtonDown(0)) 
        {
            comboTimer = comboResetTime;

            attackIndex++;
            if (attackIndex > 5) attackIndex = 1;

            animator.SetInteger("AttackIndex", attackIndex);
            animator.SetTrigger("AttackTrigger");
        }

        // Reset combo if idle too long
        if (comboTimer > 0)
        {
            comboTimer -= Time.deltaTime;
            if (comboTimer <= 0)
                attackIndex = 0;
        }
    }
}