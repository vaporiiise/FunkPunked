using UnityEngine;

public class PlayerParry : MonoBehaviour
{
    [Header("Parry Settings")]
    public float parriesNeededForBurst = 4;   // 4th parry triggers knockback
    public float knockbackForce = 10f;        // Force applied on 4th parry

    private float parryTimer = 0f;
    private bool isParryWindowActive = false;
    public int parryStreak { get; private set; } = 0;

    // Events for other scripts to subscribe
    public static event System.Action OnParrySuccessful;
    public static event System.Action OnParryBurst;

    void Update()
    {
        UpdateParryWindow();
        HandleInput();
    }

    private void HandleInput()
    {
        if (Input.GetMouseButtonDown(1)) // RMB pressed
        {
            TryParry();
        }
    }

    private void UpdateParryWindow()
    {
        if (isParryWindowActive)
        {
            parryTimer -= Time.deltaTime;
            if (parryTimer <= 0f)
            {
                isParryWindowActive = false;
                Debug.Log("⚪ Parry window ended");
            }
        }
    }

    /// <summary>
    /// Called when player presses RMB
    /// Only succeeds if parry window is active
    /// </summary>
    public bool TryParry()
    {
        if (!isParryWindowActive)
        {
            Debug.Log("❌ Parry failed (window not active)");
            return false;
        }

        parryStreak++;
        Debug.Log($"🔷 Parry success! Streak: {parryStreak}/{parriesNeededForBurst}");
        OnParrySuccessful?.Invoke();

        if (parryStreak >= parriesNeededForBurst)
        {
            Debug.Log("💥 FOURTH PARRY! Triggering knockback!");
            parryStreak = 0;
            OnParryBurst?.Invoke();
        }

        isParryWindowActive = false; // Parry consumed
        return true;
    }

    /// <summary>
    /// Enable parry window for a custom duration
    /// Called from enemy attack before it lands
    /// </summary>
    public void EnableParryWindow(float duration)
    {
        isParryWindowActive = true;
        parryTimer = duration;
        Debug.Log($"🟦 Parry window ENABLED for {duration} seconds!");
    }

    public void ResetParryStreak()
    {
        parryStreak = 0;
        Debug.Log("🟥 Parry streak reset");
    }

    public bool IsParryWindowActive() => isParryWindowActive;
}
