using System.Collections;
using UnityEngine;

public class HitstopManager : MonoBehaviour
{
    public static HitstopManager Instance { get; private set; }
    public bool IsProcessing { get; private set; }

    [Header("Default Settings")]
    [SerializeField] private float defaultDelay = 0.02f;
    [SerializeField] private float lightHitDuration = 0.07f;
    [SerializeField] private float heavyHitDuration = 0.2f;

    [Header("Safety Settings")]
    // Updated to 0.5s as requested
    [SerializeField] private float maxFreezeSafetyDuration = 0.5f; 
    private float _safetyTimer = 0f;

    private Coroutine _hitstopCoroutine;

    void Awake()
    {
        if (Instance == null) Instance = this;
        else Destroy(gameObject);
    }

    void Update()
    {
        // NEW: If something else (like your Resume Button) resumed the game,
        // we need to kill any active hitstop logic immediately.
        if (IsProcessing && Time.timeScale >= 1f)
        {
            ResetHitstopState();
            return; 
        }

        // Existing Safety Check
        if (Time.timeScale == 0f && !PauseController.IsPaused)
        {
            _safetyTimer += Time.unscaledDeltaTime;
            if (_safetyTimer >= maxFreezeSafetyDuration)
            {
                ForceResume();
            }
        }
        else
        {
            _safetyTimer = 0f;
        }
    }

// Helper method to clean up the state
    private void ResetHitstopState()
    {
        if (_hitstopCoroutine != null) StopCoroutine(_hitstopCoroutine);
        _hitstopCoroutine = null;
        IsProcessing = false;
        _safetyTimer = 0f;
    }

    public void ExecuteHitstop(bool isHeavy)
    {
        float duration = isHeavy ? heavyHitDuration : lightHitDuration;

        if (_hitstopCoroutine != null) StopCoroutine(_hitstopCoroutine);
        _hitstopCoroutine = StartCoroutine(ProcessHitstop(duration, defaultDelay));
    }

    private IEnumerator ProcessHitstop(float duration, float delay)
    {
        IsProcessing = true;

        if (delay > 0)
        {
            yield return new WaitForSecondsRealtime(delay);
        }

        // Freeze Time
        Time.timeScale = 0f;
        // Optimization: No need to multiply by 0 here, it's just 0.
        Time.fixedDeltaTime = 0f; 

        yield return new WaitForSecondsRealtime(duration);

        // Resume if the PauseController says we aren't paused.
        if (!PauseController.IsPaused)
        {
            Time.timeScale = 1f;
            Time.fixedDeltaTime = 0.02f;
        }
        
        IsProcessing = false;
        _hitstopCoroutine = null;
    }

    public void ForceResume()
    {
        // Don't force resume if the player is in the pause menu
        if (PauseController.IsPaused) return;

        Time.timeScale = 1f;
        Time.fixedDeltaTime = 0.02f;
        IsProcessing = false;
        
        if (_hitstopCoroutine != null) StopCoroutine(_hitstopCoroutine);
        _hitstopCoroutine = null;
        _safetyTimer = 0f;
    }
    
    public void ClearHitstopOnResume()
    {
        // Stop any active hitstop routine immediately
        if (_hitstopCoroutine != null)
        {
            StopCoroutine(_hitstopCoroutine);
            _hitstopCoroutine = null;
        }

        // Reset internal flags
        IsProcessing = false;
        _safetyTimer = 0f;

        // We don't necessarily set Time.timeScale = 1 here 
        // because your Resume Button script should be doing that.
        // But we ensure the Manager isn't trying to control time anymore.
    }
}