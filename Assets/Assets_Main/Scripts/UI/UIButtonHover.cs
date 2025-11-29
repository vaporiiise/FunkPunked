using UnityEngine;
using UnityEngine.EventSystems;

public class UIButtonHover : MonoBehaviour, IPointerEnterHandler, IPointerExitHandler
{
    public Animator animator;

    public string hoverTrigger = "Hover";
    public string leaveTrigger = "Leave";

    public void OnPointerEnter(PointerEventData eventData)
    {
        if(animator != null)
        {
            animator.ResetTrigger(leaveTrigger);
            animator.SetTrigger(hoverTrigger);
        }
    }

    public void OnPointerExit(PointerEventData eventData)
    {
        if(animator != null)
        {
            animator.ResetTrigger(hoverTrigger);
            animator.SetTrigger(leaveTrigger);
        }
    }
}