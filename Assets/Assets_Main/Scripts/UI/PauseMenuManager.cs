using UnityEngine;
using UnityEngine.SceneManagement;

public class PauseMenuManager : MonoBehaviour
{
    [Header("UI Canvases")]
    public GameObject pauseMenuCanvas;   // Pause menu UI
    public GameObject optionsCanvas;     // Options UI
    public GameObject archivesCanvas;    // Archives UI

    [Header("Settings")]
    public string mainMenuSceneName = "MainMenu"; // Scene to load when quitting

    private bool isPaused = false;

    void Update()
    {
        // Toggle pause menu with ESC
        if (Input.GetKeyDown(KeyCode.Escape))
        {
            if (!isPaused)
                Resume();
            else
                Pause();
        }
    }

    // ================= BUTTON FUNCTIONS =================

    public void Resume()
    {
        isPaused = false;                             
        if (pauseMenuCanvas) pauseMenuCanvas.SetActive(false);  
        Time.timeScale = 1f;      
        
        if (HitstopManager.Instance != null)
        {
            HitstopManager.Instance.ClearHitstopOnResume();
        }
    }

    public void Pause()
    {
        isPaused = true;
        if (pauseMenuCanvas) pauseMenuCanvas.SetActive(true);
        Time.timeScale = 0f; // Pause game
    }

    public void OpenOptions()
    {
        if (optionsCanvas) optionsCanvas.SetActive(true);
    }

    public void CloseOptions()
    {
        if (optionsCanvas) optionsCanvas.SetActive(false);
    }

    public void OpenArchives()
    {
        if (archivesCanvas) archivesCanvas.SetActive(true);
    }

    public void CloseArchives()
    {
        if (archivesCanvas) archivesCanvas.SetActive(false);
    }

    public void QuitToMainMenu()
    {
        Time.timeScale = 1f; // Reset time scale
        SceneManager.LoadScene(mainMenuSceneName); // Load main menu scene
    }

    public void QuitGame()
    {
        Debug.Log("Quit Game");
        Application.Quit();
    }
}