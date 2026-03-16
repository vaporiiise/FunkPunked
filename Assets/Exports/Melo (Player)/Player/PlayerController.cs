using UnityEngine;
using UnityEngine.InputSystem;
using System.Collections;

[RequireComponent(typeof(CharacterController))]
public class PlayerController : MonoBehaviour
{
    [Header("Movement")]
    public float moveSpeed = 6f;
    public float gravity = -20f; 
    public float drag = 5f;      
    public Transform cameraTransform;
    
    private CharacterController controller;
    private Vector2 moveInput;
    private Vector3 verticalVelocity; 
    private Vector3 impact; 

    [Header("Dash Settings")]
    public float dashSpeed = 20f;
    public float dashDuration = 0.2f;
    public float dashCooldown = 0.5f;
    public float dashEnemyDetectionRange = 5f;
    private bool isDashing;
    private float lastDashTime;

    [Header("Combo Configuration")]
    public int maxComboStep = 6;
    public float comboWindowOpenDelay = 0.15f;
    public float comboWindowDuration = 0.6f;
    public float comboResetTime = 1.0f; // Time in seconds before combo resets to Step 1

    private int comboStep = 0;
    private bool isAttacking;
    private bool comboWindowOpen;
    private bool bufferedNextAttack;
    private float comboWindowTimer;
    private float lastAttackEndTime; // Tracked to handle combo expiration
    private bool canMoveCancel; 
    private bool _isParryLocked; 

    [Header("Combat Stats")]
    public float baseDamage = 10f;
    private float currentDamageMultiplier = 1f;

    [Header("Combat Assets")]
    public GameObject attackHitbox;
    public TrailRenderer attackTrail;
    public AudioSource audioSource;
    public AudioClip attackSFX;

    [Header("Targeting")]
    public float targetRange = 6f;
    public float targetRotationSpeed = 8f;
    public string enemyTag = "Enemy";

    private PlayerControls controls;
    private PlayerAnimationHandler animationHandler;
    private PlayerHealth health;
    private Animator animator;
    private Coroutine hitStopCoroutine;

    private void Awake()
    {
        controller = GetComponent<CharacterController>();
        animationHandler = GetComponent<PlayerAnimationHandler>();
        health = GetComponent<PlayerHealth>();
        animator = GetComponentInChildren<Animator>();
        
        controls = new PlayerControls();
        controls.Player.Move.performed += ctx => moveInput = ctx.ReadValue<Vector2>();
        controls.Player.Move.canceled += _ => moveInput = Vector2.zero;
        controls.Player.Attack.performed += _ => OnAttackInput();
        controls.Player.Dash.performed += _ => StartDash();
    }

    private void OnEnable() => controls.Player.Enable();
    private void OnDisable() { controls.Player.Disable(); Time.timeScale = 1f; }

    private void Update()
    {
        HandleGravity();
        HandleImpactDecay(); 
        HandleMovement();
        HandleTargeting();
        HandleComboWindow();
        CheckComboExpiration();
    }

    private void HandleGravity()
    {
        if (controller.isGrounded && verticalVelocity.y < 0) 
            verticalVelocity.y = -2f;

        verticalVelocity.y += gravity * Time.deltaTime;
        controller.Move(verticalVelocity * Time.deltaTime);
    }

    private void HandleImpactDecay()
    {
        if (impact.magnitude > 0.2f) 
            controller.Move(impact * Time.deltaTime);

        impact = Vector3.Lerp(impact, Vector3.zero, drag * Time.deltaTime);
    }

    private void CheckComboExpiration()
    {
        // Reset combo step if player waits too long after an attack ends
        if (!isAttacking && comboStep > 0)
        {
            if (Time.time > lastAttackEndTime + comboResetTime)
            {
                comboStep = 0;
            }
        }
    }

    public void AddForce(Vector3 direction, float force)
    {
        direction.Normalize();
        impact += direction * force;
    }

    public void AddForceForward() => AddForce(transform.forward, 15f);
    public void AddForceBackward() => AddForce(-transform.forward, 10f);

    public void StartParryLock() 
    { 
        _isParryLocked = true; 
        verticalVelocity = Vector3.zero;
        impact = Vector3.zero;
        DisableHitbox(); 
    }

    public void EndParryLock() => _isParryLocked = false;

    public void TriggerHitStop(float duration, float scale)
    {
        if (hitStopCoroutine != null) StopCoroutine(hitStopCoroutine);
        hitStopCoroutine = StartCoroutine(DoHitStop(duration, scale));
    }

    private IEnumerator DoHitStop(float duration, float scale)
    {
        float originalFixed = Time.fixedDeltaTime;
        Time.timeScale = scale;
        Time.fixedDeltaTime = 0.02f * Time.timeScale;
        yield return new WaitForSecondsRealtime(duration);
        Time.timeScale = 1.0f;
        Time.fixedDeltaTime = originalFixed;
        hitStopCoroutine = null;
    }

    private void HandleMovement()
    {
        if (_isParryLocked || isDashing)
        {
            animationHandler.UpdateMovement(0f);
            return;
        }

        if (isAttacking)
        {
            if (canMoveCancel && moveInput.sqrMagnitude > 0.1f) 
                ResetToLocomotion();
            else
            {
                animationHandler.UpdateMovement(0f);
                return; 
            }
        }

        Vector3 move = new Vector3(moveInput.x, 0, moveInput.y);
        move = Quaternion.Euler(0, cameraTransform.eulerAngles.y, 0) * move;

        if (move.sqrMagnitude > 0.01f)
        {
            controller.Move(move.normalized * moveSpeed * Time.deltaTime);
            transform.rotation = Quaternion.Slerp(transform.rotation, Quaternion.LookRotation(move.normalized), 12f * Time.deltaTime);
        }
        
        animationHandler.UpdateMovement(moveInput.magnitude);
    }

    private void OnAttackInput()
    {
        if (_isParryLocked || isDashing) return;
        
        if (isAttacking)
        {
            if (comboWindowOpen) bufferedNextAttack = true;
            return;
        }

        // If comboStep is 0 (expired) or at max, start fresh at 1. Otherwise, increment.
        comboStep = (comboStep >= maxComboStep || comboStep == 0) ? 1 : comboStep + 1;
        StartAttack();
    }

    private void StartAttack() 
    { 
        isAttacking = true; 
        ExecuteAttack(); 
    }

    private void ExecuteAttack()
    {
        comboWindowTimer = 0f;
        comboWindowOpen = false;
        bufferedNextAttack = false;
        canMoveCancel = false; 
        AddForce(transform.forward, 5f);
        PlayAttackAnimation();
    }

    public void OnAttackFinished()
    {
        DisableHitbox();
        lastAttackEndTime = Time.time;
        canMoveCancel = true; 

        if (bufferedNextAttack)
        {
            comboStep = (comboStep % maxComboStep) + 1;
            ExecuteAttack();
        }
        else
        {
            // Stop active attack state but keep comboStep for potential continuation
            isAttacking = false;
        }
    }

    // BRIDGE FUNCTION: For Animation Events named 'OnAnimationReset'
    public void OnAnimationReset() 
    { 
        if (!bufferedNextAttack) ResetToLocomotion(); 
    }

    public void ResetToLocomotion()
    {
        isAttacking = false;
        _isParryLocked = false;
        comboStep = 0;
        bufferedNextAttack = false;
        comboWindowOpen = false;
        canMoveCancel = false;
        DisableHitbox();
        animationHandler.PlayMove();
    }

    public void SetDamageMultiplier(float m) => currentDamageMultiplier = m;
    public float GetCurrentDamage() => baseDamage * currentDamageMultiplier;

    private void StartDash()
    {
        if (isDashing || Time.time < lastDashTime + dashCooldown || _isParryLocked) return;
        if (isAttacking) ResetToLocomotion();
        StartCoroutine(DashRoutine());
    }

    private IEnumerator DashRoutine()
    {
        isDashing = true;
        lastDashTime = Time.time;
        health.IsInvulnerable = true;

        Vector3 dashDir = (moveInput.sqrMagnitude < 0.01f) ? transform.forward : 
            (Quaternion.Euler(0, cameraTransform.eulerAngles.y, 0) * new Vector3(moveInput.x, 0, moveInput.y)).normalized;

        bool enemyNearby = false;
        GameObject[] enemies = GameObject.FindGameObjectsWithTag(enemyTag);
        foreach (var e in enemies)
        {
            if (e != null && Vector3.Distance(transform.position, e.transform.position) < dashEnemyDetectionRange)
            {
                enemyNearby = true;
                break;
            }
        }

        if (enemyNearby) animationHandler.PlayDashBack();
        else animationHandler.PlayDashForward();

        float timer = 0;
        while (timer < dashDuration)
        {
            controller.Move(dashDir * dashSpeed * Time.deltaTime);
            timer += Time.deltaTime;
            yield return null;
        }

        health.IsInvulnerable = false;
        isDashing = false;
    }

    private void HandleComboWindow()
    {
        if (!isAttacking) return;
        comboWindowTimer += Time.deltaTime;
        comboWindowOpen = (comboWindowTimer >= comboWindowOpenDelay && comboWindowTimer <= comboWindowOpenDelay + comboWindowDuration);
    }

    private void HandleTargeting()
    {
        if (!isAttacking || canMoveCancel || _isParryLocked || isDashing) return;
        GameObject[] enemies = GameObject.FindGameObjectsWithTag(enemyTag);
        Transform nearest = null; float minDist = targetRange;
        foreach (var e in enemies)
        {
            if (e == null) continue;
            float d = Vector3.Distance(transform.position, e.transform.position);
            if (d < minDist) { minDist = d; nearest = e.transform; }
        }
        if (nearest != null)
        {
            Vector3 dir = (nearest.position - transform.position).normalized; dir.y = 0;
            transform.rotation = Quaternion.Slerp(transform.rotation, Quaternion.LookRotation(dir), targetRotationSpeed * Time.deltaTime);
        }
    }

    private void PlayAttackAnimation()
    {
        switch (comboStep) {
            case 1: animationHandler.PlayAttack1(); break;
            case 2: animationHandler.PlayAttack2(); break;
            case 3: animationHandler.PlayAttack3(); break;
            case 4: animationHandler.PlayAttack4(); break;
            case 5: animationHandler.PlayAttack5(); break;
            case 6: animationHandler.PlayAttack6(); break;
            default: animationHandler.PlayAttack1(); break;
        }
    }

    public void EnableHitbox() { if (attackHitbox) attackHitbox.SetActive(true); if (attackTrail) attackTrail.emitting = true; if (audioSource && attackSFX) audioSource.PlayOneShot(attackSFX); }
    public void DisableHitbox() { if (attackHitbox) attackHitbox.SetActive(false); if (attackTrail) attackTrail.emitting = false; }
}