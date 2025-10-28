using UnityEngine;

[RequireComponent(typeof(Animator))]
public class BatAnimations : MonoBehaviour
{
    private Animator animator;
    public string animationStateName = "BatHit"; 

    void Start()
    {
        animator = GetComponent<Animator>();
    }

    public void PlayOneShotAnimation()
    {
        animator.Play(animationStateName);
    }

    void Update()
    {
        if (Input.GetKeyDown(KeyCode.Mouse0))
        {
            animator.SetTrigger("AttackTrigger");
        }
    }
}
