using UnityEngine;
using UnityEngine.UI;
using UnityEngine.SceneManagement;
using System.Collections;

public class AutoReload : MonoBehaviour
{
    public Image fadeImage;

    private void OnEnable()
    {
        StartCoroutine(Sequence());
    }

    private IEnumerator Sequence()
    {
        float duration = 2f;
        float elapsed = 0f;
        Color tempColor = fadeImage.color;

        while (elapsed < duration)
        {
            elapsed += Time.unscaledDeltaTime;
            tempColor.a = Mathf.Clamp01(elapsed / duration);
            fadeImage.color = tempColor;
            yield return null;
        }

        Time.timeScale = 0f;

        yield return new WaitForSecondsRealtime(3f);

        Time.timeScale = 1f;
        SceneManager.LoadScene(SceneManager.GetActiveScene().buildIndex);
    }
}