using UnityEngine;

public class PlayerCombatAnimation : MonoBehaviour
{
    public Animator animator;
    private int attackIndex = 0;
    private float comboTimer;
    public float comboResetTime = 1f; 

    void Update()
    {
        float move = Input.GetAxisRaw("Horizontal");
        animator.SetBool("isWalking", move != 0);

        if (Input.GetMouseButtonDown(0)) 
        {
            comboTimer = comboResetTime;

            attackIndex++;
            if (attackIndex > 5) attackIndex = 1;

            animator.SetInteger("AttackIndex", attackIndex);
            animator.SetTrigger("AttackTrigger");
        }

        if (comboTimer > 0)
        {
            comboTimer -= Time.deltaTime;
            if (comboTimer <= 0)
                attackIndex = 0;
        }
    }
}