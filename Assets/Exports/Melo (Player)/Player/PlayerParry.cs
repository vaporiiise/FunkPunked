using UnityEngine;
using UnityEngine.InputSystem;
using System.Collections;
using Unity.Cinemachine; 
using TMPro; 

public class CinematicParry : MonoBehaviour
{
    [Header("Input & Settings")]
    [SerializeField] private InputActionProperty parryAction;
    [SerializeField] private PlayerInput playerInput; 
    [SerializeField] private float parryWindow = 0.25f;

    [Header("Animation")]
    [SerializeField] private Animator animator; 
    [SerializeField] private string parryTriggerName = "Parry"; 
    [SerializeField] private string successTriggerName = "ParrySuccess"; 

    [Header("Cinematic Camera")]
    [SerializeField] private CinemachineCamera parryCamera; 
    [SerializeField] private float slowMotionScale = 0.05f; 
    [SerializeField] private float cinematicDuration = 2.0f; 
    [SerializeField] private float slowMotionDelay = 0.1f; // The new delay!

    [Header("Typing Text Effect")]
    [SerializeField] private GameObject floatingTextPrefab; 
    [SerializeField] private string textMessage = "PERFECT!";
    [SerializeField] private Vector3 textOffset = new Vector3(0f, 2f, 0f); 
    [SerializeField] private float typingSpeed = 0.05f; 

    private bool _isParrying = false;
    private float _parryTimer = 0f;

    void Awake()
    {
        if (animator == null) animator = GetComponent<Animator>();
        if (parryCamera != null) parryCamera.gameObject.SetActive(false);
    }

    void OnEnable() 
    { 
        parryAction.action.Enable(); 
        parryAction.action.performed += _ => AttemptParry(); 
    }

    void OnDisable() 
    { 
        parryAction.action.Disable(); 
    }

    void AttemptParry()
    {
        if (_isParrying) return;
        
        _isParrying = true;
        _parryTimer = parryWindow;

        // Play the "Brace" animation immediately
        if (animator != null) animator.SetTrigger(parryTriggerName);
    }

    void Update()
    {
        if (_isParrying)
        {
            _parryTimer -= Time.deltaTime;
            if (_parryTimer <= 0) _isParrying = false;
        }
    }

    private void OnTriggerEnter(Collider other)
    {
        // Only trigger if we actually hit an enemy while parrying
        if (_isParrying && other.CompareTag("EnemyHitbox"))
        {
            StartCoroutine(ExecuteSequence());
        }
    }

    IEnumerator ExecuteSequence()
    {
        // 1. SUCCESS! (Close window immediately)
        _isParrying = false; 

        // 2. PLAY IMPACT ANIMATION (At full speed first)
        if (animator != null)
        {
            animator.SetTrigger(successTriggerName);
            // Ensure animator keeps playing even when we slow down later
            animator.updateMode = AnimatorUpdateMode.UnscaledTime;
        }

        // 3. WAIT FOR IMPACT (The 0.1f delay you asked for)
        // We use Realtime so this 0.1s happens at normal speed
        yield return new WaitForSecondsRealtime(slowMotionDelay);


        // --- NOW THE CINEMATIC STARTS ---

        // 4. LOCK INPUT & CUT CAMERA
        if (playerInput) playerInput.DeactivateInput();
        if (parryCamera != null) parryCamera.gameObject.SetActive(true);

        // 5. FREEZE TIME
        Time.timeScale = slowMotionScale;

        // 6. SPAWN TEXT
        GameObject textObj = null;
        TextMeshPro tmpComponent = null;

        if (floatingTextPrefab)
        {
            textObj = Instantiate(floatingTextPrefab, transform.position + textOffset, Quaternion.identity);
            tmpComponent = textObj.GetComponent<TextMeshPro>();
            if (tmpComponent) tmpComponent.text = ""; 
        }

        // 7. CINEMATIC LOOP (Duration = cinematicDuration)
        float timer = 0f;
        int charIndex = 0;
        float typeTimer = 0f;

        while (timer < cinematicDuration)
        {
            // Use unscaledDeltaTime because Time.timeScale is now ~0
            float dt = Time.unscaledDeltaTime; 
            timer += dt;

            // Billboarding & Typing Logic
            if (textObj != null && Camera.main != null)
            {
                textObj.transform.rotation = Camera.main.transform.rotation;
                textObj.transform.position = transform.position + textOffset;
            }

            if (tmpComponent != null && charIndex < textMessage.Length)
            {
                typeTimer += dt;
                if (typeTimer >= typingSpeed)
                {
                    typeTimer = 0f; 
                    tmpComponent.text += textMessage[charIndex];
                    charIndex++;
                }
            }

            yield return null;
        }

        // 8. CLEANUP (Reset everything)
        
        // Disable Parry Camera
        if (parryCamera != null) parryCamera.gameObject.SetActive(false);

        // Restore Game Speed
        Time.timeScale = 1f;

        // Restore Animator to normal game time
        if (animator != null) animator.updateMode = AnimatorUpdateMode.Normal;

        // Cleanup Objects
        if (textObj) Destroy(textObj);
        if (playerInput) playerInput.ActivateInput();
    }
}