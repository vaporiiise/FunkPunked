using UnityEngine;
using UnityEngine.InputSystem;
using System.Collections;

[RequireComponent(typeof(CharacterController))]
public class PlayerController : MonoBehaviour
{
    [Header("Movement & Physics")]
    public float moveSpeed = 6f;
    public float gravity = -20f; 
    public float drag = 5f;      
    public Transform cameraTransform;
    private CharacterController controller;
    private Vector2 moveInput;
    private Vector3 verticalVelocity; 
    private Vector3 impact; 

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
    private float currentDamageMultiplier = 1f;

    [Header("Combat Assets")]
    public GameObject attackHitbox;
    public TrailRenderer attackTrail;

    private PlayerAnimationHandler animationHandler;
    private CinematicParry parryScript;
    private PlayerCombo comboScript;
    private PlayerControls controls;
    private bool _isActionLocked;

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
        HandleGravity();
        HandleImpactDecay(); 
        HandleMovement();
        CheckComboExpiration();
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
        if (animationHandler.IsFlinching() || _isParryLocked || isDashing) return;
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
        if (animationHandler.IsFlinching() || _isParryLocked || isDashing) return;

        // --- NEW LOGIC: Walk out of attack without killing combo ---
        if (canMoveCancel && moveInput.sqrMagnitude > 0.01f) 
        {
            CancelAnimationOnly(); 
        }

        if (isAttacking && !canMoveCancel) 
        {
            animationHandler.UpdateMovement(0f);
            return;
        }

        if (canMoveCancel && moveInput.sqrMagnitude > 0.1f && !isAttacking && comboStep == 0) 
        {
            ResetToLocomotion();
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

    public void OnAnimationReset() => ResetToLocomotion();
    public void OpenComboWindow() => animationHandler.SetComboWindow(true);
    public void CloseComboWindow() => animationHandler.SetComboWindow(false);

    public void EnableHitbox() { if(attackHitbox) attackHitbox.SetActive(true); if(attackTrail) attackTrail.emitting = true; }
    public void DisableHitbox() { if(attackHitbox) attackHitbox.SetActive(false); if(attackTrail) attackTrail.emitting = false; }

    public void StartParryLock() { _isParryLocked = true; isAttacking = false; impact = Vector3.zero; }
    public void EndParryLock() => _isParryLocked = false;
    public void SetDamageMultiplier(float m) => currentDamageMultiplier = m;

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

    public void ResetToLocomotion() { 
        isAttacking = false; 
        _isParryLocked = false; 
        canMoveCancel = false;
        comboStep = 0;
        DisableHitbox(); 
        animationHandler.PlayMove(); 
    }
    
    private bool _isQuickTurning = false;

    public void QuickTurn180()
    {
        if (!_isQuickTurning) 
        {
            StartCoroutine(DampedRotationRoutine(0.15f)); 
        }
    }
    
    public void SetActionLock(bool locked) {
        _isActionLocked = locked;
        if (locked) {
            Rigidbody rb = GetComponent<Rigidbody>();
            if (rb) rb.linearVelocity = Vector3.zero; 
        }
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
    
    public void CancelAnimationOnly()
    {
        isAttacking = false;
        canMoveCancel = false;
        DisableHitbox();
    
        // Switch animator to walking, but DON'T touch comboStep or lastAttackEndTime
        animationHandler.PlayMove(); 
    }

    // --- PHYSICS ---
    public void AddForceForward() => impact += transform.forward * 15f;
    public void AddForceForwardHard() => impact += transform.forward * 20f;
    public void AddForceForwardBounce() => impact += (transform.forward * 10f) + (transform.up * 10f);
    public void AddForceBackwardsLight() => impact += transform.forward * -10f;
    public void AddForceBackwards() => impact += -transform.forward * 10f;

    private void HandleGravity() { if (controller.isGrounded && verticalVelocity.y < 0) verticalVelocity.y = -2f; verticalVelocity.y += gravity * Time.deltaTime; controller.Move(verticalVelocity * Time.deltaTime); }
    private void HandleImpactDecay() { if (impact.magnitude > 0.1f) controller.Move(impact * Time.deltaTime); impact = Vector3.Lerp(impact, Vector3.zero, drag * Time.deltaTime); }
    
    private void StartDash() { if (isDashing || Time.time < lastDashTime + dashCooldown || _isParryLocked || animationHandler.IsFlinching()) return; StartCoroutine(DashRoutine()); }
    private IEnumerator DashRoutine() { isDashing = true; lastDashTime = Time.time; Vector3 dDir = (moveInput.sqrMagnitude > 0.01f) ? (Quaternion.Euler(0, cameraTransform.eulerAngles.y, 0) * new Vector3(moveInput.x, 0, moveInput.y)).normalized : transform.forward; animationHandler.PlayDashForward(); float t = 0; while (t < dashDuration) { controller.Move(dDir * dashSpeed * Time.deltaTime); t += Time.deltaTime; yield return null; } isDashing = false; }
}