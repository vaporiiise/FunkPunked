using UnityEngine;
using UnityEngine.InputSystem;
using System.Collections;

[RequireComponent(typeof(CharacterController))]
public class PlayerController : MonoBehaviour
{
    [Header("Movement")]
    public float moveSpeed = 6f;
    public float gravity = -9.81f;
    public Transform cameraTransform;
    private CharacterController controller;
    private Vector2 moveInput;
    private Vector3 velocity;

    [Header("Combo Configuration")]
    public int maxComboStep = 6;
    public float comboWindowOpenDelay = 0.15f;
    public float comboWindowDuration = 0.6f;

    private int comboStep = 0;
    private bool isAttacking;
    private bool comboWindowOpen;
    private bool bufferedNextAttack;
    private float comboWindowTimer;
    private bool canMoveCancel; 
    private bool _isParryLocked; 

    [Header("Combat Stats")]
    public float baseDamage = 10f;
    private float currentDamageMultiplier = 1f;

    [Header("Combat Extras")]
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
    private Animator animator;
    private Coroutine hitStopCoroutine;

    private void Awake()
    {
        controller = GetComponent<CharacterController>();
        animationHandler = GetComponent<PlayerAnimationHandler>();
        animator = GetComponentInChildren<Animator>();
        controls = new PlayerControls();

        controls.Player.Move.performed += ctx => moveInput = ctx.ReadValue<Vector2>();
        controls.Player.Move.canceled += _ => moveInput = Vector2.zero;
        controls.Player.Attack.performed += _ => OnAttackInput();
    }

    private void OnEnable() => controls.Player.Enable();
    private void OnDisable() { controls.Player.Disable(); Time.timeScale = 1f; }

    private void Update()
    {
        HandleGravity();
        HandleMovement();
        HandleTargeting();
        HandleComboWindow();
    }

    private void HandleGravity()
    {
        if (controller.isGrounded && velocity.y < 0) velocity.y = -2f;
        velocity.y += gravity * Time.deltaTime;
        controller.Move(velocity * Time.deltaTime);
    }

    private void OnAttackInput()
    {
        if (_isParryLocked) return;
        if (isAttacking && comboWindowOpen) { bufferedNextAttack = true; return; }
        if (!isAttacking) StartAttack();
    }

    private void StartAttack() { isAttacking = true; comboStep = 1; ExecuteAttack(); }

    private void ExecuteAttack()
    {
        comboWindowTimer = 0f;
        comboWindowOpen = false;
        bufferedNextAttack = false;
        canMoveCancel = false; 
        PlayAttackAnimation();
    }

    public void StartParryLock() 
    { 
        _isParryLocked = true; 
        velocity = Vector3.zero; 
        isAttacking = false; 
        DisableHitbox(); 
    }

    public void EndParryLock() 
    { 
        _isParryLocked = false; 
    }

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

    public void EnableHitbox() 
    { 
        if (attackHitbox) attackHitbox.SetActive(true); 
        if (attackTrail) attackTrail.emitting = true; 
        if (audioSource && attackSFX) audioSource.PlayOneShot(attackSFX); 
    }

    public void DisableHitbox() 
    { 
        if (attackHitbox) attackHitbox.SetActive(false); 
        if (attackTrail) attackTrail.emitting = false; 
    }

    public void OnAttackFinished()
    {
        DisableHitbox();
        canMoveCancel = true; 
        if (bufferedNextAttack)
        {
            comboStep++;
            if (comboStep > maxComboStep) comboStep = 1;
            ExecuteAttack();
        }
    }
    
    public void OnAnimationReset() 
    { 
        ResetToLocomotion(); 
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

    private void HandleMovement()
    {
        if (_isParryLocked)
        {
            animationHandler.UpdateMovement(0f);
            return;
        }

        if (isAttacking && !canMoveCancel) 
        {
            animationHandler.UpdateMovement(0f);
            return; 
        }

        if (isAttacking && canMoveCancel && moveInput.sqrMagnitude > 0.1f) ResetToLocomotion();
        if (isAttacking) return;

        Vector3 move = new Vector3(moveInput.x, 0, moveInput.y);
        move = Quaternion.Euler(0, cameraTransform.eulerAngles.y, 0) * move;
        if (move.sqrMagnitude > 0.01f)
        {
            controller.Move(move.normalized * moveSpeed * Time.deltaTime);
            transform.rotation = Quaternion.Slerp(transform.rotation, Quaternion.LookRotation(move.normalized), 12f * Time.deltaTime);
        }
        animationHandler.UpdateMovement(moveInput.magnitude);
    }

    private void HandleComboWindow()
    {
        if (!isAttacking) return;
        comboWindowTimer += Time.deltaTime;
        if (!comboWindowOpen && comboWindowTimer >= comboWindowOpenDelay) comboWindowOpen = true;
        if (comboWindowOpen && comboWindowTimer >= comboWindowOpenDelay + comboWindowDuration) comboWindowOpen = false;
    }

    private void HandleTargeting()
    {
        if (!isAttacking || canMoveCancel || _isParryLocked) return;
        Transform nearest = null; float minDist = targetRange;
        foreach (var e in GameObject.FindGameObjectsWithTag(enemyTag))
        {
            float d = Vector3.Distance(transform.position, e.transform.position);
            if (d < minDist) { minDist = d; nearest = e.transform; }
        }
        if (nearest == null) return;
        Vector3 dir = (nearest.position - transform.position).normalized; dir.y = 0;
        transform.rotation = Quaternion.Slerp(transform.rotation, Quaternion.LookRotation(dir), targetRotationSpeed * Time.deltaTime);
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
        }
    }

    public void SetDamageMultiplier(float m) => currentDamageMultiplier = m;
    public float GetCurrentDamage() => baseDamage * currentDamageMultiplier;
}