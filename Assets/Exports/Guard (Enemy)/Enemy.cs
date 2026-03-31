using UnityEngine;
using UnityEngine.UI;

public class Enemy : MonoBehaviour
{
    [Header("Health Bar")]
    public int maxHealth = 100;
    private int _currentHealth = 0;
    [SerializeField] private Image healthBarFill;

    [Header("Stability - 2 Slices")]
    public float maxStability = 100f; 
    private float _currentStability = 0f;
    public float stabilityPerHit = 15f; 
    [SerializeField] private Image stabilitySlice1; 
    [SerializeField] private Image stabilitySlice2; 

    private BossAnimationHandler _animHandler;
    private BossAI _brain;

    void Awake() {
        _animHandler = GetComponent<BossAnimationHandler>();
        _brain = GetComponent<BossAI>();
        UpdateUI();
    }

    public void TakeHit(Transform attacker = null) {
        if (_currentHealth >= maxHealth || _brain == null) return;
        
        _currentHealth++; 
        UpdateUI();

        if (_brain.IsStaggered) return;

        if (_brain.CanBeStaggered()) {
            _currentStability += stabilityPerHit;
        } else {
            _currentStability = 0; 
        }

        if (_currentStability >= maxStability) {
            _currentStability = 0; 
            if (_animHandler) _animHandler.TriggerStaggerOnly(); 
            _brain.EnterStagger(5.0f); 
            UpdateUI();
        } 
        else {
            if (_animHandler) _animHandler.TriggerHit();
            _brain.SetActionLock(true); 
            CancelInvoke(nameof(RestoreSpeed)); 
            Invoke(nameof(RestoreSpeed), 0.2f); 
        }
        
        if (_currentHealth >= maxHealth) Die();
        
        BossAI ai = GetComponent<BossAI>();
        if (ai != null) 
        {
            ai.OnBossTookHit(); 
        }
    }
    
    public void ResetStabilityOnPlayerHit() {
        _currentStability = 0f;
        UpdateUI();
    }

    private void RestoreSpeed() { if (_brain && !_brain.IsStaggered) _brain.SetActionLock(false); }

    private void UpdateUI() { 
        if (healthBarFill) healthBarFill.fillAmount = (float)(maxHealth - _currentHealth) / maxHealth; 
        float half = maxStability / 2;
        if (stabilitySlice1) stabilitySlice1.fillAmount = Mathf.Clamp(_currentStability / half, 0, 1);
        if (stabilitySlice2) stabilitySlice2.fillAmount = Mathf.Clamp((_currentStability - half) / half, 0, 1);
    }

    private void Die() { if (_brain) _brain.enabled = false; gameObject.SetActive(false); }
}