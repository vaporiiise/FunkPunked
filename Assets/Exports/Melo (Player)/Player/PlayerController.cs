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
    private bool isDashing;
    private float lastDashTime;

    [Header("Combo Configuration")]
    public int maxComboStep = 6;
    public float comboWindowOpenDelay = 0.15f;
    public float comboWindowDuration = 0.6f;
    public float comboResetTime = 1.0f;

    private int comboStep = 0;
    private bool isAttacking;
    private bool comboWindowOpen;
    private bool bufferedNextAttack;
    private float comboWindowTimer;
    private float lastAttackEndTime; 
    private bool canMoveCancel; 
    private bool _isParryLocked; // THIS CONTROLS THE LOCK

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
    private Coroutine hitStopCoroutine;

    private void Awake()
    {
        controller = GetComponent<CharacterController>();
        animationHandler = GetComponent<PlayerAnimationHandler>();
        
        controls = new PlayerControls();
        controls.Player.Move.performed += ctx => moveInput = ctx.ReadValue<Vector2>();
        controls.Player.Move.canceled += _ => moveInput = Vector2.zero;
        controls.Player.Attack.performed += _ => OnAttackInput();
        controls.Player.Dash.performed += _ => StartDash();
    }

    private void OnEnable() => controls.Player.Enable();
    private void OnDisable() { controls.Player.Disable(); ResetTimeScale(); }

    private void Update()
    {
        HandleGravity();
        HandleImpactDecay(); 
        HandleMovement();
        HandleTargeting();
        HandleComboWindow();
        CheckComboExpiration();
    }

    public void StartParryLock() 
    { 
        _isParryLocked = true; 
        impact = Vector3.zero; 
    }

    public void EndParryLock() 
    { 
        _isParryLocked = false; 
    }

    public void ForceCancelAttack()
    {
        if (hitStopCoroutine != null) StopCoroutine(hitStopCoroutine);
        ResetTimeScale();

        isAttacking = false;
        isDashing = false;
        _isParryLocked = false; 
        bufferedNextAttack = false;
        comboWindowOpen = false;
        canMoveCancel = false;
        impact = Vector3.zero;
        DisableHitbox();
    }

    private void HandleMovement()
    {
        if (animationHandler != null && animationHandler.IsFlinching())
        {
            animationHandler.UpdateMovement(0f);
            return;
        }

        if (_isParryLocked || isDashing) 
        {
            animationHandler.UpdateMovement(0f);
            return;
        }

        if (isAttacking)
        {
            if (canMoveCancel && moveInput.sqrMagnitude > 0.1f) ResetToLocomotion();
            else { animationHandler.UpdateMovement(0f); return; }
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

    public void TriggerHitStop(float d, float s) { if (hitStopCoroutine != null) StopCoroutine(hitStopCoroutine); hitStopCoroutine = StartCoroutine(DoHitStop(d, s)); }
    private IEnumerator DoHitStop(float d, float s) { Time.timeScale = s; yield return new WaitForSecondsRealtime(d); ResetTimeScale(); }
    private void ResetTimeScale() { Time.timeScale = 1.0f; Time.fixedDeltaTime = 0.02f; }
    private void OnAttackInput() { if (animationHandler.IsFlinching() || _isParryLocked) return; comboStep = (comboStep % maxComboStep) + 1; isAttacking = true; ExecuteAttack(); }
    private void ExecuteAttack() { PlayAttackAnimation(); }
    public void EnableHitbox() { if (attackHitbox) attackHitbox.SetActive(true); }
    public void DisableHitbox() { if (attackHitbox) attackHitbox.SetActive(false); }
    public void ResetToLocomotion() { isAttacking = false; DisableHitbox(); animationHandler.PlayMove(); }
    private void PlayAttackAnimation() { /* Switch Case */ }
    private void HandleGravity() { if (controller.isGrounded && verticalVelocity.y < 0) verticalVelocity.y = -2f; verticalVelocity.y += gravity * Time.deltaTime; controller.Move(verticalVelocity * Time.deltaTime); }
    private void HandleImpactDecay() { if (impact.magnitude > 0.2f) controller.Move(impact * Time.deltaTime); impact = Vector3.Lerp(impact, Vector3.zero, drag * Time.deltaTime); }
    private void StartDash() { if (!isDashing) StartCoroutine(DashRoutine()); }
    private IEnumerator DashRoutine() { isDashing = true; yield return new WaitForSeconds(dashDuration); isDashing = false; }
    private void HandleComboWindow() { }
    private void CheckComboExpiration() { }
    private void HandleTargeting() { }
}