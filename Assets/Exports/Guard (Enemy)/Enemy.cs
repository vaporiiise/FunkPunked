using UnityEngine;
using UnityEngine.UI;
using UnityEngine.SceneManagement; // Required for scene loading

public class Enemy : MonoBehaviour
{
    [Header("Health Bar")]
    public int maxHealth = 100;
    private int _currentHealth = 0;
    [SerializeField] private Image healthBarFill;

    [Header("Stability - Boss Only")]
    public float maxStability = 100f; 
    private float _currentStability = 0f;
    public float stabilityPerHit = 15f; 
    [SerializeField] private Image stabilityBarFill;

    private BossAI _bossBrain;
    private EnemyAI _guardBrain; 
    private Animator _animator;
    private bool _isDead = false; 

    void Awake() 
    {
        _animator = GetComponent<Animator>();
        _bossBrain = GetComponent<BossAI>();
        _guardBrain = GetComponent<EnemyAI>();
        UpdateUI();
    }

    public void TakeHit(Transform attacker = null) 
    {
        // Don't take hits if already dead
        if (_isDead || _currentHealth >= maxHealth) return;
        
        _currentHealth++; 
        UpdateUI();

        if (HitstopManager.Instance != null)
            HitstopManager.Instance.ExecuteHitstop(false);

        if (_bossBrain != null)
        {
            HandleBossStagger();
        }
        else if (_guardBrain != null)
        {
            HandleGuardHit();
        }

        if (_currentHealth >= maxHealth) Die();
    }

    private void HandleBossStagger()
    {
        if (_bossBrain.IsStaggered) return;

        if (_bossBrain.CanBeStaggered()) _currentStability += stabilityPerHit;
        else _currentStability = 0;

        if (_currentStability >= maxStability) 
        {
            _currentStability = 0; 
            _animator.SetTrigger("Stagger"); 
            _bossBrain.EnterStagger(5.0f); 
        } 
        else 
        {
            // --- TRIGGER THE RANDOM CHANCE LOGIC ---
            _bossBrain.OnBossTookHit(); 
        
            _animator.SetTrigger("Hit");
            _bossBrain.SetActionLock(true); 
            CancelInvoke(nameof(RestoreBossSpeed)); 
            Invoke(nameof(RestoreBossSpeed), 0.2f); 
        }
        UpdateUI();
    }

    private void HandleGuardHit()
    {
        if (_animator) _animator.SetTrigger("GotHit");
        if (_guardBrain) _guardBrain.AddForceForward(); 
    }

    private void RestoreBossSpeed() { if (_bossBrain) _bossBrain.SetActionLock(false); }

    public void ResetStabilityOnPlayerHit() 
    {
        _currentStability = 0f;
        UpdateUI();
    }

    private void UpdateUI() 
    { 
        if (healthBarFill) healthBarFill.fillAmount = (float)(maxHealth - _currentHealth) / maxHealth; 
        if (stabilityBarFill) stabilityBarFill.fillAmount = _currentStability / maxStability;
    }

    private void Die() 
    { 
        if (_isDead) return;
        _isDead = true;

        if (_animator) 
        {
            // 1. Clear all other logic
            _animator.ResetTrigger("Attack");
            _animator.ResetTrigger("GotHit");

            // 2. FORCE the "Die" state to play immediately (Bypasses all transitions)
            // Ensure "Die" matches the name of the state in your Animator exactly
            _animator.Play("Die", 0, 0f); 
        }

        // 3. Kill the Brain so it stops calling Attack()
        if (_guardBrain) _guardBrain.enabled = false;

        // 4. Freeze Physics
        Rigidbody rb = GetComponent<Rigidbody>();
        if (rb != null)
        {
            rb.isKinematic = true;
            rb.linearVelocity = Vector3.zero;
        }

        // 5. Turn off Collision
        Collider col = GetComponent<Collider>();
        if (col) col.enabled = false;

        Destroy(gameObject, 3f); 
        HandleDeathVisuals();

        // Check if this specific enemy is a Boss
        if (_bossBrain != null)
        {
            SceneManager.LoadScene("Cutscene04");


        }

        Destroy(gameObject, 3.1f); 
    }

    private void LoadNextLevel()
    {
        // This loads the next scene in your Build Settings queue
        int nextSceneIndex = SceneManager.GetActiveScene().buildIndex + 1;
        
        // Ensure the next index actually exists to avoid errors
        if (nextSceneIndex < SceneManager.sceneCountInBuildSettings)
        {
            SceneManager.LoadScene(nextSceneIndex);
        }
    }

    private void HandleDeathVisuals()
    {
        if (_animator) 
        {
            _animator.ResetTrigger("Attack");
            _animator.ResetTrigger("GotHit");
            _animator.Play("Die", 0, 0f); 
        }

        if (_guardBrain) _guardBrain.enabled = false;

        Rigidbody rb = GetComponent<Rigidbody>();
        if (rb != null)
        {
            rb.isKinematic = true;
            rb.linearVelocity = Vector3.zero;
        }

        Collider col = GetComponent<Collider>();
        if (col) col.enabled = false;
    }

}