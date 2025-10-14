using UnityEngine;
using MoreMountains.Feedbacks;

public class PlayerFeedbacks : MonoBehaviour
{
    [Header("Feedbacks")]
    public MMF_Player hitFeedback;
    public MMF_Player parryFeedback;
    public MMF_Player attackFeedback;
    public MMF_Player dashFeedback;
    public MMF_Player jumpFeedback;
    public MMF_Player deathFeedback;

    public void PlayHitFeedback() => hitFeedback?.PlayFeedbacks();
    public void PlayParryFeedback() => parryFeedback?.PlayFeedbacks();
    public void PlayAttackFeedback() => attackFeedback?.PlayFeedbacks();
    public void PlayDashFeedback() => dashFeedback?.PlayFeedbacks();
    public void PlayJumpFeedback() => jumpFeedback?.PlayFeedbacks();
    public void PlayDeathFeedback() => deathFeedback?.PlayFeedbacks();
}