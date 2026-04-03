using UnityEngine;
using UnityEngine.InputSystem;
using System.Collections;

[RequireComponent(typeof(CharacterController))]
public class PlayerController : MonoBehaviour
{
    [Header("Movement & Physics")]
    public float moveSpeed = 6f;
    public float gravity = -20f; 
    public Transform cameraTransform;
    private CharacterController controller;
    private Vector2 moveInput;
    private Vector3 verticalVelocity; 

    [Header("Soft-Lock Settings")]
    public float lockOnRange = 10f;
    public LayerMask enemyLayer;
    public float rotationSmoothing = 15f;

    [Header("Dash Settings")]
    public float dashSpeed = 20f;
    public float dashDuration = 0.2f;
    public float dashCooldown = 0.5f;
    private bool isDashing;
    private float lastDashTime;

    [Header("Combo & Combat")]
    public int maxComboStep = 6;
    public float comboResetTime = 1.0f;
    private int comboStep = 0;
    private bool isAttacking;
    private bool canMoveCancel; 
    private float lastAttackEndTime; 
    private bool _isParryLocked;
    private float currentDamageMultiplier = 1f; // RESTORED

    [Header("Combat Assets")]
    public GameObject attackHitbox;
    public TrailRenderer attackTrail;

    private PlayerAnimationHandler animationHandler;
    private CinematicParry parryScript;
    private PlayerCombo comboScript;
    private PlayerControls controls;
    private bool _isActionLocked; // RESTORED

    private void Awake()
    {
        controller = GetComponent<CharacterController>();
        animationHandler = GetComponent<PlayerAnimationHandler>();
        parryScript = GetComponent<CinematicParry>();
        comboScript = GetComponent<PlayerCombo>();
        
        controls = new PlayerControls();
        controls.Player.Move.performed += ctx => moveInput = ctx.ReadValue<Vector2>();
        controls.Player.Move.canceled += _ => moveInput = Vector2.zero;
        controls.Player.Attack.performed += _ => OnAttackInput();
        controls.Player.Dash.performed += _ => StartDash();
    }

    private void OnEnable() => controls.Player.Enable();
    private void OnDisable() { if(controls != null) controls.Player.Disable(); }

    private void Update()
    {
        ApplyGravity();
        HandleMovement();
        CheckComboExpiration();
    
        // (Soft-Lock block has been removed from here)
    }

    private void CheckComboExpiration()
    {
        if (!isAttacking && comboStep > 0 && Time.time > lastAttackEndTime + comboResetTime)
        {
            comboStep = 0;
        }
    }

    private void FaceTarget()
    {
        Collider[] enemies = Physics.OverlapSphere(transform.position, lockOnRange, enemyLayer);
        Transform closestEnemy = null;
        float closestDistance = Mathf.Infinity;

        foreach (Collider enemy in enemies)
        {
            float distance = Vector3.Distance(transform.position, enemy.transform.position);
            if (distance < closestDistance)
            {
                closestDistance = distance;
                closestEnemy = enemy.transform;
            }
        }

        if (closestEnemy != null)
        {
            Vector3 direction = (closestEnemy.position - transform.position).normalized;
            direction.y = 0; 
            if (direction != Vector3.zero)
            {
                transform.rotation = Quaternion.LookRotation(direction);
            }
        }
    }

    private void OnAttackInput()
    {
        if (animationHandler.IsFlinching() || _isParryLocked || isDashing || _isActionLocked) return;
        if (isAttacking && !canMoveCancel) return;

        FaceTarget();

        isAttacking = true;
        canMoveCancel = false; 
    
        comboStep = (comboStep >= maxComboStep) ? 1 : comboStep + 1;
    
        DisableHitbox(); 
        animationHandler.PlayAttack(comboStep);
    }

    private void HandleMovement() 
    {
        // If we are in SoftLock and moving, EndHurtLock() is called in Update
        if (animationHandler.IsFlinching() || _isParryLocked || isDashing || _isActionLocked) return;

        if (canMoveCancel && moveInput.sqrMagnitude > 0.01f) 
        {
            CancelAnimationOnly(); 
        }

        if (isAttacking && !canMoveCancel) 
        {
            animationHandler.UpdateMovement(0f);
            return;
        }

        Vector3 move = Quaternion.Euler(0, cameraTransform.eulerAngles.y, 0) * new Vector3(moveInput.x, 0, moveInput.y);
        if (move.sqrMagnitude > 0.01f) 
        {
            controller.Move(move.normalized * moveSpeed * Time.deltaTime);
            transform.rotation = Quaternion.Slerp(transform.rotation, Quaternion.LookRotation(move.normalized), 12f * Time.deltaTime);
        }
    
        animationHandler.UpdateMovement(moveInput.magnitude);
    }
    
    

    public void OnAttackFinished() 
    {
        DisableHitbox();
        canMoveCancel = true; 
        isAttacking = false;
        lastAttackEndTime = Time.time;
    }

    // --- NEW LUNGE PHYSICS ---
    public void AddForceForward() => StartCoroutine(LungeRoutine(transform.forward, 15f, 0.12f));
    public void AddForceForwardHard() => StartCoroutine(LungeRoutine(transform.forward, 22f, 0.15f));
    public void AddForceForwardBounce() => StartCoroutine(LungeRoutine(transform.forward + (Vector3.up * 0.5f), 12f, 0.15f));
    public void AddForceBackwardsLight() => StartCoroutine(LungeRoutine(-transform.forward, 8f, 0.1f));
    public void AddForceBackwards() => StartCoroutine(LungeRoutine(-transform.forward, 12f, 0.12f));
    

    private IEnumerator LungeRoutine(Vector3 direction, float speed, float duration)
    {
        float elapsed = 0;
        while (elapsed < duration)
        {
            controller.Move(direction.normalized * speed * Time.deltaTime);
            elapsed += Time.deltaTime;
            yield return null;
        }
    }

    private void ApplyGravity() 
    { 
        if (controller.isGrounded && verticalVelocity.y < 0) verticalVelocity.y = -2f; 
        verticalVelocity.y += gravity * Time.deltaTime; 
        controller.Move(verticalVelocity * Time.deltaTime); 
    }

    private void StartDash() { if (isDashing || Time.time < lastDashTime + dashCooldown || _isParryLocked || animationHandler.IsFlinching() || _isActionLocked) return; StartCoroutine(DashRoutine()); }
    private IEnumerator DashRoutine() 
    { 
        isDashing = true; 
        lastDashTime = Time.time; 
        Vector3 dDir = (moveInput.sqrMagnitude > 0.01f) ? (Quaternion.Euler(0, cameraTransform.eulerAngles.y, 0) * new Vector3(moveInput.x, 0, moveInput.y)).normalized : transform.forward; 
        animationHandler.PlayDashForward(); 
        float t = 0; 
        while (t < dashDuration) 
        { 
            controller.Move(dDir * dashSpeed * Time.deltaTime); 
            t += Time.deltaTime; 
            yield return null; 
        } 
        isDashing = false; 
    }

    // --- RESTORED METHODS FOR PLAYERCOMBO & OTHER SCRIPTS ---
    public void SetDamageMultiplier(float m) => currentDamageMultiplier = m;

    public void SetActionLock(bool locked) 
    {
        _isActionLocked = locked;
        if (locked) {
            Rigidbody rb = GetComponent<Rigidbody>();
            if (rb) rb.linearVelocity = Vector3.zero; 
        }
    }

    private bool _isQuickTurning = false;
    public void QuickTurn180()
    {
        if (!_isQuickTurning) StartCoroutine(DampedRotationRoutine(0.15f)); 
    }

    private IEnumerator DampedRotationRoutine(float duration)
    {
        _isQuickTurning = true;
        Quaternion startRot = transform.rotation;
        Quaternion targetRot = transform.rotation * Quaternion.Euler(0, 180, 0);
        float elapsed = 0;
        while (elapsed < duration)
        {
            transform.rotation = Quaternion.Slerp(startRot, targetRot, elapsed / duration);
            elapsed += Time.deltaTime;
            yield return null;
        }
        transform.rotation = targetRot; 
        _isQuickTurning = false;
    }

    // --- UTILITY & ANIMATION HANDLERS ---
    public void EnableHitbox() { if(attackHitbox) attackHitbox.SetActive(true); if(attackTrail) attackTrail.emitting = true; }
    public void DisableHitbox() { if(attackHitbox) attackHitbox.SetActive(false); if(attackTrail) attackTrail.emitting = false; }
    public void OnAnimationReset() => ResetToLocomotion();
    public void OpenComboWindow() => animationHandler.SetComboWindow(true);
    public void CloseComboWindow() => animationHandler.SetComboWindow(false);

    public void StartParryLock() 
    { 
        // Force reset attack variables so movement isn't blocked
        isAttacking = false; 
        canMoveCancel = true; 
        
        _isParryLocked = true; 
        StopAllCoroutines(); 
        _isQuickTurning = false;
        DisableHitbox();
    }
    
    public bool _isSoftLock = false; 

    public void EnableSoftLock() => _isSoftLock = true;
    public void EndParryLock() => _isParryLocked = false;

    public void ResetToLocomotion() 
    { 
        isAttacking = false; 
        _isParryLocked = false; 
        canMoveCancel = false;
        comboStep = 0;
        DisableHitbox(); 
        animationHandler.PlayMove(); 
    }

    public void CancelAnimationOnly()
    {
        isAttacking = false;
        canMoveCancel = false;
        DisableHitbox();
        animationHandler.PlayMove(); 
    }

    public void ForceCancelAttack()
    {
        isAttacking = false;
        isDashing = false;
        _isParryLocked = false;
        canMoveCancel = false;
        comboStep = 0;
        DisableHitbox();
        if (comboScript != null) comboScript.ResetFeverOnHit();
        if (parryScript != null) parryScript.AbortParry();
    }
    
    public void StartHurtLock() 
    { 
        _isActionLocked = true; 
        _isSoftLock = false; 
    }

    public void EndHurtLock() 
    { 
        // Reset all combat and movement locks
        _isActionLocked = false; 
        isAttacking = false;   // Ensure "Zombie" attack is dead
        canMoveCancel = false; // Reset the cancel flag
    
        // Force the animator to blend back to walking/idle
        if (animationHandler != null) 
        {
            animationHandler.PlayMove(); 
        }
    }
}