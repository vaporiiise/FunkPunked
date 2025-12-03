using UnityEngine;
using UnityEngine.UI;
using UnityEngine.EventSystems;

public class UIButtonHoverEffect : MonoBehaviour, IPointerEnterHandler, IPointerExitHandler
{
    [Header("Sprites")]
    public Sprite normalSprite;
    public Sprite hoverSprite;

    [Header("Scale Settings")]
    public Vector3 normalScale = Vector3.one;
    public Vector3 hoverScale = Vector3.one * 1.1f;
    public float scaleSpeed = 10f;

    public Image buttonImage; // assign in inspector to be safe
    private bool isHovered = false;

    private void Awake()
    {
        if (buttonImage == null)
            buttonImage = GetComponent<Image>();

        if (buttonImage != null && normalSprite != null)
            buttonImage.sprite = normalSprite;
    }

    private void Update()
    {
        transform.localScale = Vector3.Lerp(transform.localScale,
            isHovered ? hoverScale : normalScale,
            Time.unscaledDeltaTime * scaleSpeed); // use unscaled for UI
    }

    public void OnPointerEnter(PointerEventData eventData)
    {
        isHovered = true;
        buttonImage.sprite = hoverSprite;
        buttonImage.SetNativeSize(); // Adjust rect to the new sprite size
    }

    public void OnPointerExit(PointerEventData eventData)
    {
        isHovered = false;
        buttonImage.sprite = normalSprite;
        buttonImage.SetNativeSize(); // Reset to original size
    }
}
