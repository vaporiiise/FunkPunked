using UnityEngine;
using UnityEngine.SceneManagement;

public class MainMenuManager : MonoBehaviour
{
    [Header("All UI Canvases")]
    public GameObject[] canvases; // assign all your canvases in the inspector

    /// <summary>
    /// Show only the canvas with the given name, hide all others
    /// </summary>
    public void ShowCanvas(string canvasName)
    {
        foreach (GameObject canvas in canvases)
        {
            if (canvas == null) continue;
            canvas.SetActive(canvas.name == canvasName);
        }
    }

    /// <summary>
    /// Enable a canvas and optionally keep others active
    /// </summary>
    public void EnableCanvas(string canvasName, bool keepOthers = false)
    {
        foreach (GameObject canvas in canvases)
        {
            if (canvas == null) continue;

            if (canvas.name == canvasName)
                canvas.SetActive(true);
            else if (!keepOthers)
                canvas.SetActive(false);
        }
    }

    /// <summary>
    /// Disable a specific canvas
    /// </summary>
    public void DisableCanvas(string canvasName)
    {
        foreach (GameObject canvas in canvases)
        {
            if (canvas == null) continue;

            if (canvas.name == canvasName)
                canvas.SetActive(false);
        }
    }

    /// <summary>
    /// Load another scene by name
    /// </summary>
    public void GoToScene(string sceneName)
    {
        PressAnyButton pressAnyButton = FindObjectOfType<PressAnyButton>();
        if (pressAnyButton != null)
            pressAnyButton.StopMusic();

        SceneManager.LoadScene(sceneName);
    }
}