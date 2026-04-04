using UnityEngine;

public class SceneCursorController : MonoBehaviour
{
    void Start()
    {
        ApplyCursorState();
    }

    void OnEnable()
    {
        ApplyCursorState();
    }

    void Update()
    {
        // Safety check: ensures other scripts don't accidentally 
        // hide the cursor while this scene is active
        if (Cursor.visible == false || Cursor.lockState != CursorLockMode.None)
        {
            ApplyCursorState();
        }
    }

    private void ApplyCursorState()
    {
        Cursor.visible = true;
        Cursor.lockState = CursorLockMode.None;
    }

    void OnDisable()
    {
        // Optional: Decide if you want to hide it when leaving the scene
        // Cursor.visible = false;
        // Cursor.lockState = CursorLockMode.Locked;
    }
}