using UnityEngine;

public class AttackController : MonoBehaviour
{
    [SerializeField] private BeatScheduler scheduler;

    [Header("Timing Windows (seconds)")]
    public float attackWindow = 0.15f;  // wider timing, easier
    public float parryWindow = 0.08f;   // tighter timing, harder

    public void TryAttack()
    {
        if (scheduler.IsInAttackWindow(attackWindow))
        {
            Debug.Log("Perfect Attack!");
        }
        else
        {
            Debug.Log("Missed Attack!");
        }
    }

    public void TryParry()
    {
        if (scheduler.IsInAttackWindow(parryWindow))
        {
            Debug.Log("Perfect Parry!");
            // TODO: parry effect
        }
        else
        {
            Debug.Log("Failed Parry!");
        }
    }
}