using UnityEngine;
using UnityEngine.InputSystem;

public class PlayerInputHandler : MonoBehaviour
{
    private PlayerControls controls;

    public Vector2 moveInput;
    public Vector2 lookInput;
    public bool attackPressed;
    public bool dodgePressed;
    public bool parryPressed;

    private void Awake()
    {
        controls = new PlayerControls();

        controls.Player.Move.performed += ctx => moveInput = ctx.ReadValue<Vector2>();
        controls.Player.Move.canceled += ctx => moveInput = Vector2.zero;

        controls.Player.Look.performed += ctx => lookInput = ctx.ReadValue<Vector2>();
        controls.Player.Look.canceled += ctx => lookInput = Vector2.zero;

        controls.Player.Attack.started += ctx => attackPressed = true;
        controls.Player.Attack.canceled += ctx => attackPressed = false;

        controls.Player.Dodge.started += ctx => dodgePressed = true;
        controls.Player.Dodge.canceled += ctx => dodgePressed = false;

        controls.Player.Parry.started += ctx => parryPressed = true;
        controls.Player.Parry.canceled += ctx => parryPressed = false;
    }

    private void OnEnable()
    {
        controls.Enable();
    }

    private void OnDisable()
    {
        controls.Disable();
    }
}