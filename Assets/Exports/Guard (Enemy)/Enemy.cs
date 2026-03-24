using UnityEngine;
using UnityEngine.UI; 

public class Enemy : MonoBehaviour
{
    [Header("Combat Stats")]
    public int maxHits = 50;
    private int currentHits = 0;
    private int consecutiveHits = 0;
    private float hitWindowTimer;

    [Header("UI References")]
    [SerializeField] private Image healthBarFill; 
    [SerializeField] private bool hideUIOnDeath = true;

    private BossAnimationHandler _animHandler;
    private BossAI _brain;

    void Awake() 
    {
        _animHandler = GetComponent<BossAnimationHandler>();
        _brain = GetComponent<BossAI>();
        
        UpdateHealthUI();
    }

    void Update()
    {
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

        UpdateHealthUI();

        if (consecutiveHits >= 20) 
        {
            _animHandler.TriggerHit(2);
            if (_brain) _brain.EnterStagger(6.0f);
            consecutiveHits = 0;
        }
        else if (consecutiveHits >= 5) 
        {
            _animHandler.TriggerHit(1);
        }
        else 
        {
            _animHandler.TriggerHit(0);
        }

        if (currentHits >= maxHits) Die();
    }

    private void UpdateHealthUI()
    {
        if (healthBarFill != null)
        {
            float healthPercent = (float)(maxHits - currentHits) / maxHits;
            healthBarFill.fillAmount = Mathf.Clamp01(healthPercent);
        }
    }

    private void Die()
    {
        _animHandler.ResetMovement();
        
        if (hideUIOnDeath && healthBarFill != null)
        {
            healthBarFill.transform.parent.gameObject.SetActive(false);
        }

        if (_brain) _brain.enabled = false;
    }
}