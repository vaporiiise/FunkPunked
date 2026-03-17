using UnityEngine;
using UnityEngine.UI; // Required for Image component

public class Enemy : MonoBehaviour
{
    [Header("Combat Stats")]
    public int maxHits = 50;
    private int currentHits = 0;
    private int consecutiveHits = 0;
    private float hitWindowTimer;

    [Header("UI References")]
    [SerializeField] private Image healthBarFill; // Drag your 'Fill' image here
    [SerializeField] private bool hideUIOnDeath = true;

    private BossAnimationHandler _animHandler;
    private BossAI _brain;

    void Awake()
    {
        _animHandler = GetComponent<BossAnimationHandler>();
        _brain = GetComponent<BossAI>();
        
        // Initialize UI
        UpdateHealthUI();
    }

    void Update()
    {
        // Reset combo counter if player stops attacking for 2 seconds
        if (hitWindowTimer > 0)
        {
            hitWindowTimer -= Time.deltaTime;
            if (hitWindowTimer <= 0) consecutiveHits = 0;
        }
    }

    public void TakeHit(Transform attacker = null)
    {
        currentHits++;
        consecutiveHits++;
        hitWindowTimer = 2.0f;

        // Update the UI image fill
        UpdateHealthUI();

        // Logic for 3 different Got Hits
        if (consecutiveHits >= 6) // Heavy Stagger
        {
            _animHandler.TriggerHit(2);
            if (_brain) _brain.EnterStagger(3.0f);
            consecutiveHits = 0;
        }
        else if (consecutiveHits >= 3) // Normal Hit
        {
            _animHandler.TriggerHit(1);
        }
        else // Subtle Flinch
        {
            _animHandler.TriggerHit(0);
        }

        if (currentHits >= maxHits) Die();
    }

    private void UpdateHealthUI()
    {
        if (healthBarFill != null)
        {
            // Health % = (MaxHits - CurrentHits) / MaxHits
            float healthPercent = (float)(maxHits - currentHits) / maxHits;
            healthBarFill.fillAmount = Mathf.Clamp01(healthPercent);
        }
    }

    private void Die()
    {
        _animHandler.ResetMovement();
        
        if (hideUIOnDeath && healthBarFill != null)
        {
            // Hide the parent canvas or the bar itself
            healthBarFill.transform.parent.gameObject.SetActive(false);
        }

        if (_brain) _brain.enabled = false;
    }
}