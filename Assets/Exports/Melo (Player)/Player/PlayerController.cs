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

    [Header("Dash & Dodge Settings")]
    public float dodgeDistanceMultiplier = 1.4f;
    public float dashSpeed = 20f;
    public float dashDuration = 0.2f;
    public float dashCooldown = 0.5f;
    public float dodgeRadius = 4f; // Radius to detect enemy for a dodge
    private bool isDashing;        
    private float lastDashTime;    
    private bool isInvulnerable;   
    
    [Header("Perfect Dodge Settings")]
    public float dodgeSlowMoScale = 0.2f; 
    public float dodgeSlowMoDuration = 0.5f; // Real-world seconds
    private bool _hasTriggeredSlowMo = false;
    
    [Header("Combo & Combat")]
    public int maxComboStep = 6;
    public float comboResetTime = 1.0f;
    private int comboStep = 0;
    private bool isAttacking;
    private bool canMoveCancel; 
    private float lastAttackEndTime; 
    private bool _isParryLocked;
    private float currentDamageMultiplier = 1f; 

    [Header("Combat Assets")]
    public GameObject attackHitbox;
    public TrailRenderer attackTrail;

    private PlayerAnimationHandler animationHandler;
    private CinematicParry parryScript;
    private PlayerCombo comboScript;
    private PlayerControls controls;
    private bool _isActionLocked; 
    
    public bool IsInvulnerable() => isInvulnerable;
    
    private Coroutine activeDashCoroutine; 

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
    private void OnDisable() 
    { 
        if(controls != null) controls.Player.Disable(); 
        CleanupDashState(); // Safety reset if script is disabled during dash
    }

    private void Update()
    {
        ApplyGravity();
        HandleMovement();
        CheckComboExpiration();

        // ADD THIS: Soft-Lock Tracking during Attack
        if (isAttacking && !isDashing)
        {
            SoftLockTracking();
        }
    }

    private void SoftLockTracking()
    {
        Collider[] enemies = Physics.OverlapSphere(transform.position, lockOnRange, enemyLayer);
        Transform target = null;
        float closestDist = Mathf.Infinity;

        foreach (var enemy in enemies)
        {
            float dist = Vector3.Distance(transform.position, enemy.transform.position);
            if (dist < closestDist)
            {
                closestDist = dist;
                target = enemy.transform;
            }
        }

        if (target != null)
        {
            Vector3 dir = (target.position - transform.position).normalized;
            dir.y = 0;
            if (dir != Vector3.zero)
            {
                // Use rotationSmoothing to make the turn feel natural but firm
                Quaternion targetRot = Quaternion.LookRotation(dir);
                transform.rotation = Quaternion.Slerp(transform.rotation, targetRot, rotationSmoothing * Time.deltaTime);
            }
        }
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
                transform.rotation = Quaternion.Slerp(transform.rotation, Quaternion.LookRotation(direction), rotationSmoothing * Time.deltaTime);
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
            controller.Move(move.normalized * moveSpeed * Time.unscaledDeltaTime);
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
            // Changed to unscaledDeltaTime so the "oomph" of the attack stays fast
            controller.Move(direction.normalized * speed * Time.unscaledDeltaTime);
            elapsed += Time.unscaledDeltaTime;
            yield return null;
        }
    }

    private void ApplyGravity() 
    { 
        if (controller.isGrounded && verticalVelocity.y < 0) verticalVelocity.y = -2f; 
        verticalVelocity.y += gravity * Time.deltaTime; 
        controller.Move(verticalVelocity * Time.deltaTime); 
    }

    private void StartDash() 
    { 
        // If we are already dashing, ignore
        if (isDashing || activeDashCoroutine != null) return;

        // Standard guards
        if (Time.time < lastDashTime + dashCooldown || _isParryLocked || animationHandler.IsFlinching() || _isActionLocked) 
            return; 

        // --- THE FIX: KILL THE ATTACK STATE ---
        // If Melo was attacking, we force it to stop so isAttacking doesn't stay 'true'
        if (isAttacking) 
        {
            isAttacking = false;
            canMoveCancel = false;
            DisableHitbox(); // Turn off sword hits/trails immediately
        }

        activeDashCoroutine = StartCoroutine(DashRoutine()); 
    }

    private IEnumerator DashRoutine() 
{ 
    isDashing = true; 
    lastDashTime = Time.time; 
    // REMOVED: _hasTriggeredSlowMo = false; 
    // (We move this to the coroutine itself so it doesn't reset halfway)

    // 1. DETECTION
    Collider[] enemies = Physics.OverlapSphere(transform.position, dodgeRadius, enemyLayer);
    bool nearEnemy = enemies.Length > 0;
    Transform targetEnemy = nearEnemy ? enemies[0].transform : null;

    // 2. PRE-CALCULATE VALUES
    float currentSpeed = nearEnemy ? (dashSpeed * dodgeDistanceMultiplier) : dashSpeed;
    Vector3 dashDir;

    if (moveInput.sqrMagnitude > 0.01f) {
        dashDir = (Quaternion.Euler(0, cameraTransform.eulerAngles.y, 0) * new Vector3(moveInput.x, 0, moveInput.y)).normalized;
    } else if (nearEnemy && targetEnemy != null) {
        dashDir = (transform.position - targetEnemy.position).normalized;
        dashDir.y = 0;
        if (dashDir == Vector3.zero) dashDir = -transform.forward;
    } else {
        dashDir = transform.forward;
    }

    // 3. IMPROVED TRIGGER (EASIER TO HIT)
    if (nearEnemy) {
        isInvulnerable = true; 
        animationHandler.PlayDodge(); 

        if (targetEnemy != null) {
            EnemyAttack ea = targetEnemy.GetComponentInChildren<EnemyAttack>();
            Animator enemyAnim = targetEnemy.GetComponentInParent<Animator>();

            // The "Forgiving" Check:
            // Checks if enemy is attacking OR in an animation tagged "Attack" 
            // (even if the hitbox isn't out yet!)
            bool enemyIsAttacking = (ea != null && ea.isAttacking);
            bool enemyInAnimation = (enemyAnim != null && 
                                    enemyAnim.GetCurrentAnimatorStateInfo(0).IsTag("Attack") && 
                                    enemyAnim.GetCurrentAnimatorStateInfo(0).normalizedTime < 0.7f);

            if (enemyIsAttacking || enemyInAnimation) {
                StartCoroutine(PerfectDodgeSlowMo());
            }
        }
    } else {
        animationHandler.PlayDashForward();
    }

    // 4. MOVEMENT LOOP (NOW USING UNSCALED TIME)
    float t = 0; 
    while (t < dashDuration) 
    { 
        if (!controller.enabled) break;

        // Use unscaledDeltaTime so Melo stays fast during slow-mo
        controller.Move(dashDir * currentSpeed * Time.unscaledDeltaTime); 
        
        // ROTATION LOGIC (Also Unscaled)
        if (nearEnemy && moveInput.sqrMagnitude < 0.01f && targetEnemy != null) {
            Vector3 lookDir = (targetEnemy.position - transform.position).normalized;
            lookDir.y = 0;
            if (lookDir != Vector3.zero)
                transform.rotation = Quaternion.Slerp(transform.rotation, Quaternion.LookRotation(lookDir), 20f * Time.unscaledDeltaTime);
        } else if (dashDir != Vector3.zero) {
            transform.rotation = Quaternion.Slerp(transform.rotation, Quaternion.LookRotation(dashDir), 15f * Time.unscaledDeltaTime);
        }

        t += Time.unscaledDeltaTime; 
        yield return null; 
    } 

    CleanupDashState();
}

    private IEnumerator PerfectDodgeSlowMo()
    {
        if (_hasTriggeredSlowMo) yield break;
        _hasTriggeredSlowMo = true;

        // Trigger Slow-Mo
        Time.timeScale = dodgeSlowMoScale;
        Time.fixedDeltaTime = 0.02f * Time.timeScale; 

        // Wait for the duration in REAL time
        // This allows the player to move and attack at "normal" speed relative to the world
        yield return new WaitForSecondsRealtime(dodgeSlowMoDuration);

        // Reset Time
        Time.timeScale = 1.0f;
        Time.fixedDeltaTime = 0.02f;
        _hasTriggeredSlowMo = false; 
    }

    private void CleanupDashState()
    {
        // --- CRITICAL SAFETY ---
        isInvulnerable = false; // COLLISION BACK ON
        isDashing = false; 
        activeDashCoroutine = null;
    
        // Check if we are in the middle of a reward slow-mo
        // If NOT, we reset time immediately. If YES, the other coroutine handles it.
        if (!_hasTriggeredSlowMo) 
        {
            Time.timeScale = 1.0f;
            Time.fixedDeltaTime = 0.02f;
        }

        _isActionLocked = false; 

        if (animationHandler != null) {
            animationHandler.UpdateMovement(moveInput.magnitude);
        }
    }

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

    public void EnableHitbox() { if(attackHitbox) attackHitbox.SetActive(true); if(attackTrail) attackTrail.emitting = true; }
    public void DisableHitbox() { if(attackHitbox) attackHitbox.SetActive(false); if(attackTrail) attackTrail.emitting = false; }
    public void OnAnimationReset() => ResetToLocomotion();
    public void OpenComboWindow() => animationHandler.SetComboWindow(true);
    public void CloseComboWindow() => animationHandler.SetComboWindow(false);
    
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
        isInvulnerable = false; 
        _isParryLocked = false;
        canMoveCancel = false;
        comboStep = 0;
        activeDashCoroutine = null; 
        DisableHitbox();
    
        if (comboScript != null) comboScript.ResetFeverOnHit();
        if (parryScript != null) parryScript.AbortParry();
    }

    public void StartParryLock() 
    { 
        isAttacking = false; 
        canMoveCancel = true; 
        isInvulnerable = false; 
        _isParryLocked = true; 
    
        StopAllCoroutines(); 
        CleanupDashState();  
    }
    
    public void StartHurtLock() 
    { 
        _isActionLocked = true; 
        _isSoftLock = false; 
    }

    public void EndHurtLock() 
    { 
        _isActionLocked = false; 
        isAttacking = false;   
        canMoveCancel = false; 
    
        if (animationHandler != null) 
        {
            animationHandler.PlayMove(); 
        }
    }
}