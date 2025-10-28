using UnityEngine;
using MoreMountains.Feedbacks;

public class EnemyFeedbacks : MonoBehaviour
{
    public MMF_Player damageFeedback;
    public MMF_Player warningFeedback;

    public void PlayDamageFeedback() => damageFeedback?.PlayFeedbacks();
    public void PlayWarningFeedback() => warningFeedback?.PlayFeedbacks();
}