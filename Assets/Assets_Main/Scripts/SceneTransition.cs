using UnityEngine;
using UnityEngine.SceneManagement; // Required for switching scenes

public class SceneTransition : MonoBehaviour
{
    [SerializeField] private string nextSceneName;

    // This runs automatically when something enters the Box Collider
    private void OnTriggerEnter(Collider other)
    {
        // Check if the object entering is actually the player
        if (other.CompareTag("Player"))
        {
            LoadNextScene();
        }
    }

    private void LoadNextScene()
    {
        // Loads the scene by the name provided in the Inspector
        SceneManager.LoadScene(nextSceneName);
    }
}