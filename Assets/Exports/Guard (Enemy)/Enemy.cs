using UnityEngine;
using UnityEngine.UI;

public class Enemy : MonoBehaviour
{
    [Header("Health Bar")]
    public int maxHealth = 100;
    private int _currentHealth = 0;
    [SerializeField] private Image healthBarFill;

    [Header("Stability - Single Bar")]
    public float maxStability = 100f; 
    private float _currentStability = 0f;
    public float stabilityPerHit = 15f; 
    [SerializeField] private Image stabilityBarFill; // Single bar reference

    private BossAnimationHandler _animHandler;
    private BossAI _brain;

    void Awake() 
    {
        _animHandler = GetComponent<BossAnimationHandler>();
        _brain = GetComponent<BossAI>();
        UpdateUI();
    }

    public void TakeHit(Transform attacker = null) 
    {
        // 1. Basic Health Logic
        if (_currentHealth >= maxHealth || _brain == null) return;
        
        _currentHealth++; 
        UpdateUI();

        // 2. Hitstop Effect
        if (HitstopManager.Instance != null)
        {
            HitstopManager.Instance.ExecuteHitstop(false);
            Debug.Log("Hitstop running");
        }

        // 3. Stagger/Stability Logic
        if (_brain.IsStaggered) return;

        if (_brain.CanBeStaggered()) 
        {
            _currentStability += stabilityPerHit;
        } 
        else 
        {
            _currentStability = 0; 
        }

        if (_currentStability >= maxStability) 
        {
            // Trigger Stagger
            _currentStability = 0; 
            if (_animHandler) _animHandler.TriggerStaggerOnly(); 
            _brain.EnterStagger(5.0f); 
        } 
        else 
        {
            // Regular Hit Reaction
            if (_animHandler) _animHandler.TriggerHit();
            _brain.SetActionLock(true); 
            CancelInvoke(nameof(RestoreSpeed)); 
            Invoke(nameof(RestoreSpeed), 0.2f); 
        }
        
        UpdateUI();

        // 4. Death Check
        if (_currentHealth >= maxHealth) Die();
        
        // 5. Notify AI
        if (_brain != null) 
        {
            _brain.OnBossTookHit(); 
        }
    }
    
    public void ResetStabilityOnPlayerHit() 
    {
        _currentStability = 0f;
        UpdateUI();
    }

    private void RestoreSpeed() 
    { 
        if (_brain && !_brain.IsStaggered) _brain.SetActionLock(false); 
    }

    private void UpdateUI() 
    { 
        // Update Health (Remaining health percentage)
        if (healthBarFill) 
        {
            healthBarFill.fillAmount = (float)(maxHealth - _currentHealth) / maxHealth; 
        }

        // Update Stability (Standard 0 to 1 fill)
        if (stabilityBarFill) 
        {
            stabilityBarFill.fillAmount = _currentStability / maxStability;
        }
    }

    private void Die() 
    { 
        if (_brain) _brain.enabled = false; 
        gameObject.SetActive(false); 
    }
}