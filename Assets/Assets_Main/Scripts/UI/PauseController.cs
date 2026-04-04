using UnityEngine;

public class PauseController : MonoBehaviour
{
    [Header("Pause Menu")]
    public GameObject pauseMenuCanvas;  

    public static bool IsPaused = false; 

    // Runs automatically when the script/object is enabled
    private void OnEnable()
    {
        ShowCursor(true);
    }

    // Runs automatically when the script/object is disabled
    private void OnDisable()
    {
        ShowCursor(false);
    }

    void Update()
    {
        if (Input.GetKeyDown(KeyCode.Escape))
        {
            if (!IsPaused)
                PauseGame();
            else
                ResumeGame();
        }
    }

    public void PauseGame()
    {
        IsPaused = true;
        if (pauseMenuCanvas) pauseMenuCanvas.SetActive(true);
        
        Time.timeScale = 0f; 
        ShowCursor(true);
    }

    public void ResumeGame()
    {
        IsPaused = false;
        Time.timeScale = 1f;
        ShowCursor(false);

        if (pauseMenuCanvas) pauseMenuCanvas.SetActive(false);
        
        ShowCursor(false);
    }

    // Helper method to keep code clean
    private void ShowCursor(bool isVisible)
    {
        if (isVisible)
        {
            Cursor.lockState = CursorLockMode.None;
            Cursor.visible = true;
        }
        else
        {
            Cursor.lockState = CursorLockMode.Locked;
            Cursor.visible = false;
        }
    }
}