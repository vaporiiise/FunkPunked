using UnityEngine;

public class PauseController : MonoBehaviour
{
    [Header("Pause Menu")]
    public GameObject pauseMenuCanvas;  // Assign your pause menu UI here

    private bool isPaused = false;

    void Update()
    {
        if (Input.GetKeyDown(KeyCode.Escape))
        {
            if (!isPaused)
                PauseGame();
            else
                ResumeGame();
        }
    }

    private void PauseGame()
    {
        isPaused = true;
        if (pauseMenuCanvas) pauseMenuCanvas.SetActive(true);
        Time.timeScale = 0f; // Freeze game
    }

    private void ResumeGame()
    {
        isPaused = false;
        if (pauseMenuCanvas) pauseMenuCanvas.SetActive(false);
        Time.timeScale = 1f; // Resume game
    }
}