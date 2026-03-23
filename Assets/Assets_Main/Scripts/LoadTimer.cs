using UnityEngine;
using UnityEngine.SceneManagement;
using System.Diagnostics;

public class LoadTimer : MonoBehaviour
{
    private Stopwatch stopwatch = new Stopwatch();

    public void LoadNewScene(string sceneName)
    {
        stopwatch.Restart();
        SceneManager.sceneLoaded += OnSceneLoaded;
        SceneManager.LoadScene(sceneName);
    }

    private void OnSceneLoaded(Scene scene, LoadSceneMode mode)
    {
        stopwatch.Stop();
        UnityEngine.Debug.Log($"Scene {scene.name} loaded in: {stopwatch.Elapsed.TotalSeconds} seconds");
        SceneManager.sceneLoaded -= OnSceneLoaded; // Always unregister
    }
}