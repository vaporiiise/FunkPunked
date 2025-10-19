using UnityEngine;
using FMODUnity;
using FMOD.Studio;
using System.Collections;

public class MusicManager : MonoBehaviour
{
    public static MusicManager Instance { get; private set; }

    [Header("FMOD Music Event")]
    [SerializeField] private EventReference musicEvent;

    [Header("Music Parameters")]
    [SerializeField] private MusicParameter[] parameters; // You can add multiple here

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

    /// <summary>
    /// Fades a parameter smoothly by name.
    /// </summary>
    public void SetMusicState(string parameterName, float targetValue, float fadeTime = -1f)
    {
        // Find a default fade time from our list if none specified
        if (fadeTime <= 0f)
        {
            foreach (var param in parameters)
            {
                if (param.parameterName == parameterName)
                {
                    fadeTime = param.fadeTime;
                    break;
                }
            }
            if (fadeTime <= 0f)
                fadeTime = 1f; // fallback
        }

        if (fadeCoroutine != null)
            StopCoroutine(fadeCoroutine);

        fadeCoroutine = StartCoroutine(SmoothParameterChange(parameterName, targetValue, fadeTime));
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
