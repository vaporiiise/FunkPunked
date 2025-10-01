using UnityEngine;
using TMPro;

public class UIManager : MonoBehaviour
{
    public static UIManager Instance;

    [Header("References")]
    public TextMeshProUGUI hitMissText;

    private void Awake()
    {
        if (Instance == null) Instance = this;
        else Destroy(gameObject);

        if (hitMissText != null)
            hitMissText.text = "";
    }

    public void ShowHit()
    {
        if (hitMissText == null) return;
        hitMissText.text = "HIT!";
        hitMissText.color = Color.green;
    }

    public void ShowMiss()
    {
        if (hitMissText == null) return;
        hitMissText.text = "MISS!";
        hitMissText.color = Color.red;
    }

    public void ClearText()
    {
        if (hitMissText != null)
            hitMissText.text = "";
    }
}