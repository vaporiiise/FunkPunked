using UnityEngine;
using FMODUnity;
using FMOD.Studio;
using System.Collections;

public class MusicManager : MonoBehaviour
{
    public static MusicManager Instance { get; private set; }

    [SerializeField] private EventReference musicEvent;
    private EventInstance musicInstance;

    private Coroutine fadeCoroutine;

    void Awake()
    {
        if (Instance != null && Instance != this)
        {
            Destroy(gameObject);
            return;
        }
        Instance = this;
        DontDestroyOnLoad(gameObject);
    }

    void Start()
    {
        musicInstance = RuntimeManager.CreateInstance(musicEvent);
        musicInstance.start();
    }

    public void SetMusicState(float targetValue, float fadeTime = 1.0f)
    {
        if (fadeCoroutine != null)
            StopCoroutine(fadeCoroutine);
        fadeCoroutine = StartCoroutine(SmoothParameterChange("MusicState", targetValue, fadeTime));
    }

    private IEnumerator SmoothParameterChange(string param, float target, float duration)
    {
        musicInstance.getParameterByName(param, out float current);
        float elapsed = 0f;

        while (elapsed < duration)
        {
            elapsed += Time.deltaTime;
            float t = Mathf.Clamp01(elapsed / duration);
            float newValue = Mathf.Lerp(current, target, t);
            musicInstance.setParameterByName(param, newValue);
            yield return null;
        }

        musicInstance.setParameterByName(param, target);
    }

    void OnDestroy()
    {
        musicInstance.stop(FMOD.Studio.STOP_MODE.IMMEDIATE);
        musicInstance.release();
    }
}