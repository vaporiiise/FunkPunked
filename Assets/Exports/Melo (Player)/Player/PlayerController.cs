using UnityEngine;
using UnityEngine.InputSystem; 

[RequireComponent(typeof(CharacterController))]
public class PlayerController : MonoBehaviour
{
    [Header("Movement")]
    public float moveSpeed = 6f;
    public float gravity = -9.81f;
    public Transform cameraTransform;

    private CharacterController controller;
    private Vector2 moveInput;

    [Header("Combo")]
    public int maxComboStep = 6;
    public PlayerCombo comboSystem; // Drag PlayerCombo here in Inspector

    [Header("Combo Timing")]
    public float comboWindowOpenDelay = 0.15f;
    public float comboWindowDuration = 0.6f;

    private int comboStep = 0;
    private bool isAttacking;
    private bool comboWindowOpen;
    private bool bufferedNextAttack;
    private float comboWindowTimer;

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

    private void Awake()
    {
        controller = GetComponent<CharacterController>();
        animationHandler = GetComponent<PlayerAnimationHandler>();
        controls = new PlayerControls();

        controls.Player.Move.performed += ctx => moveInput = ctx.ReadValue<Vector2>();
        controls.Player.Move.canceled += _ => moveInput = Vector2.zero;
        controls.Player.Attack.performed += _ => OnAttackInput();
    }

    private void OnEnable() => controls.Player.Enable();
    private void OnDisable() => controls.Player.Disable();

    private void Update()
    {
        HandleMovement();
        HandleTargeting();
        HandleComboWindow();
    }

    public float GetCurrentDamage() => baseDamage * currentDamageMultiplier;
    public void SetDamageMultiplier(float multiplier) => currentDamageMultiplier = multiplier;

    private void OnAttackInput()
    {
        if (comboWindowOpen)
        {
            bufferedNextAttack = true;
            return;
        }

        if (!isAttacking && comboStep == 0)
        {
            StartAttack();
        }
    }

    private void StartAttack()
    {
        isAttacking = true;
        comboWindowTimer = 0f;
        comboWindowOpen = false;
        bufferedNextAttack = false;
        comboStep = 1;
        PlayAttackAnimation();
    }

    private void HandleComboWindow()
    {
        if (!isAttacking) return;
        comboWindowTimer += Time.deltaTime;

        if (!comboWindowOpen && comboWindowTimer >= comboWindowOpenDelay)
            comboWindowOpen = true;

        if (comboWindowOpen && comboWindowTimer >= comboWindowOpenDelay + comboWindowDuration)
            comboWindowOpen = false;
    }

    public void OnAttackFinished()
    {
        DisableHitbox();
        isAttacking = false;
        comboWindowOpen = false;

        // If player is already holding move keys when anim ends, reset combo
        if (moveInput.sqrMagnitude > 0.01f)
        {
            comboStep = 0;
            bufferedNextAttack = false;
            return; 
        }

        if (bufferedNextAttack)
        {
            comboStep++;
            if (comboStep > maxComboStep) comboStep = 1;
            StartNextAttack();
        }
        else
        {
            comboStep = 0;
        }
    }

    private void StartNextAttack()
    {
        isAttacking = true;
        comboWindowTimer = 0f;
        comboWindowOpen = false;
        bufferedNextAttack = false;
        PlayAttackAnimation();
    }

    private void PlayAttackAnimation()
    {
        switch (comboStep)
        {
            case 1: animationHandler.PlayAttack1(); break;
            case 2: animationHandler.PlayAttack2(); break;
            case 3: animationHandler.PlayAttack3(); break;
            case 4: animationHandler.PlayAttack4(); break;
            case 5: animationHandler.PlayAttack5(); break;
            case 6: animationHandler.PlayAttack6(); break;
        }
    }

    private void HandleMovement()
    {
        float inputMag = moveInput.sqrMagnitude;

        // CANCEL LOGIC: If moving, kill attack and reset sequence
        if (isAttacking && inputMag > 0.05f)
        {
            CancelAttackForMovement();
        }

        float verticalVelocity = gravity;
        if (isAttacking)
        {
            controller.Move(Vector3.up * verticalVelocity * Time.deltaTime);
            animationHandler.UpdateMovement(0f); // Force IsMoving false in animator
            return;
        }

        Vector3 move = new Vector3(moveInput.x, 0, moveInput.y);
        move = Quaternion.Euler(0, cameraTransform.eulerAngles.y, 0) * move;
        controller.Move(move.normalized * moveSpeed * Time.deltaTime + Vector3.up * verticalVelocity * Time.deltaTime);
       
        float speed = controller.velocity.magnitude / moveSpeed;
        animationHandler.UpdateMovement(speed);
        
        if (move.sqrMagnitude > 0.01f)
        {
            transform.rotation = Quaternion.Slerp(transform.rotation, Quaternion.LookRotation(move.normalized), 12f * Time.deltaTime);
        }
    }

    private void CancelAttackForMovement()
    {
        isAttacking = false;
        comboStep = 0; // Ensures next attack starts at step 1
        bufferedNextAttack = false;
        comboWindowOpen = false;
        
        DisableHitbox();
        animationHandler.PlayMove(); // Force transition to Locomotion
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

    private void HandleTargeting()
    {
        if (!isAttacking) return;
        Transform nearest = null;
        float minDist = targetRange;

        foreach (var e in GameObject.FindGameObjectsWithTag(enemyTag))
        {
            float d = Vector3.Distance(transform.position, e.transform.position);
            if (d < minDist)
            {
                minDist = d;
                nearest = e.transform;
            }
        }

        if (nearest == null) return;
        Vector3 dir = nearest.position - transform.position;
        dir.y = 0;
        transform.rotation = Quaternion.Slerp(transform.rotation, Quaternion.LookRotation(dir), targetRotationSpeed * Time.deltaTime);
    }
}