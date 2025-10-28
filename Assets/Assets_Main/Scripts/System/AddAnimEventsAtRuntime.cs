using UnityEngine;

public class AddAnimEventsAtRuntime : MonoBehaviour
{
    public Animator animator;
    public AnimationClip attack1;
    public AnimationClip attack2;
    public AttackController attackController;

    void Awake()
    {
        AddEvent(attack1, "EnableWeaponCollider", 0.3f);
        AddEvent(attack1, "DisableWeaponCollider", 0.55f);

        AddEvent(attack2, "EnableWeaponCollider", 0.35f);
        AddEvent(attack2, "DisableWeaponCollider", 0.6f);
    }

    void AddEvent(AnimationClip clip, string functionName, float time)
    {
        AnimationEvent animEvent = new AnimationEvent();
        animEvent.functionName = functionName;
        animEvent.time = time;
        clip.AddEvent(animEvent);
    }
}