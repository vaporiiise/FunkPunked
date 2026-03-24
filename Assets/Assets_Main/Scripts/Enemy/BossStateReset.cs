using UnityEngine;

public class BossStateReset : StateMachineBehaviour
{
    override public void OnStateEnter(Animator animator, AnimatorStateInfo stateInfo, int layerIndex)
    {
        BossAI boss = animator.GetComponentInParent<BossAI>();
        if (boss != null)
        {
            boss.SetActionLock(true);
            Debug.Log($"<color=orange>[ANIMATOR]</color> Locked AI for state: {stateInfo.fullPathHash}");
        }
    }

    override public void OnStateExit(Animator animator, AnimatorStateInfo stateInfo, int layerIndex)
    {
        BossAI boss = animator.GetComponentInParent<BossAI>();
        if (boss != null)
        {
            boss.ForceFullReset();
            Debug.Log($"<color=green>[ANIMATOR]</color> Unlocked AI via State Exit.");
        }
    }
}