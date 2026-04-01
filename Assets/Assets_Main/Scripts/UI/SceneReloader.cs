using UnityEngine;
using UnityEngine.SceneManagement; // Required for scene control

public class SceneReloader : MonoBehaviour
{
    void Update()
    {
        // Check for the R key press
        if (Input.GetKeyDown(KeyCode.R))
        {
            ReloadCurrentScene();
        }
    }

    public void ReloadCurrentScene()
    {
        // 1. Ensure time is reset to 1 (crucial if you reload while paused!)
        Time.timeScale = 1f;
        
        // 2. Reset the static pause flag so the new scene doesn't think it's paused
        PauseController.IsPaused = false;

        // 3. Get the current active scene and load it again
        Scene activeScene = SceneManager.GetActiveScene();
        SceneManager.LoadScene(activeScene.name);
        
        Debug.Log("Scene Reloaded: " + activeScene.name);
    }
}