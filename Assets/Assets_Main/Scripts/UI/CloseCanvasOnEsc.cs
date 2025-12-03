using UnityEngine;

public class CloseCanvasOnEsc : MonoBehaviour
{
    [Header("Canvas to disable")]
    public GameObject targetCanvas;

    void Update()
    {
        if (Input.GetKeyDown(KeyCode.Escape))
        {
            if (targetCanvas != null && targetCanvas.activeSelf)
            {
                targetCanvas.SetActive(false);
            }
        }
    }
}