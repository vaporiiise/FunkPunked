using UnityEngine;

public class PauseController : MonoBehaviour
{
    [Header("Pause Menu")]
    public GameObject pauseMenuCanvas;  

    // Static means any script can check "if (PauseController.IsPaused)"
    public static bool IsPaused = false; 

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

        // Makes the mouse visible so you can use the menu
        Cursor.lockState = CursorLockMode.None;
        Cursor.visible = true;
    }

    public void ResumeGame()
    {
        Time.timeScale = 1f;
        PauseController.IsPaused = false; // Essential for the HitstopManager to work!
        pauseMenuCanvas.SetActive(false);
    }
}