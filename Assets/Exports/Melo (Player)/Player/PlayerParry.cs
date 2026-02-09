using UnityEngine;
using UnityEngine.InputSystem;
using System.Collections;
using Unity.Cinemachine; 
using UnityEngine.Rendering;
using TMPro; // Required for TextMeshPro

public class CinematicParry : MonoBehaviour
{
    [Header("Input & Settings")]
    [SerializeField] private InputActionProperty parryAction;
    [SerializeField] private PlayerInput playerInput;
    [SerializeField] private float parryWindow = 0.25f;

    [Header("Cinematic Camera")]
    [SerializeField] private CinemachineCamera parryCamera;
    [SerializeField] private Volume blackAndWhiteVolume;
    [SerializeField] private float slowMotionScale = 0.05f;
    [SerializeField] private float cinematicDuration = 2.0f; // Made longer for typing

    [Header("Shader Highlight (Fade-In)")]
    [SerializeField] private Renderer playerRenderer;
    [SerializeField] private Material outlineMaterial; // The material to add/swap
    [Tooltip("The Reference Name of the float property in your shader (e.g. _Alpha, _Intensity, _Split)")]
    [SerializeField] private string shaderFloatName = "_ParryIntensity"; 
    [SerializeField] private float shaderFadeSpeed = 2.0f;

    [Header("Typing Text Effect")]
    [SerializeField] private GameObject floatingTextPrefab; // A prefab with a TextMeshPro component
    [SerializeField] private string textMessage = "PERFECT!";
    [SerializeField] private Vector3 textOffset = new Vector3(1f, 1.5f, 0f);
    [SerializeField] private float typingSpeed = 0.05f; // Seconds per character

    // Internal State
    private bool _isParrying;
    private float _parryTimer;
    private Material _instancedOutlineMat; // To avoid modifying the asset on disk

    void OnEnable() { parryAction.action.Enable(); parryAction.action.performed += _ => AttemptParry(); }
    void OnDisable() { parryAction.action.Disable(); }

    void AttemptParry()
    {
        if (_isParrying) return;
        _isParrying = true;
        _parryTimer = parryWindow;
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
        if (_isParrying && other.CompareTag("EnemyHitbox"))
        {
            StartCoroutine(ExecuteSequence());
        }
    }

    IEnumerator ExecuteSequence()
    {
        _isParrying = false;

        // 1. SETUP: Lock Input & Create Material Instance
        if (playerInput) playerInput.DeactivateInput();
        
        // Add the outline material as a SECOND material so we don't lose the player's texture
        if (playerRenderer && outlineMaterial)
        {
            Material[] currentMats = playerRenderer.materials;
            Material[] newMats = new Material[currentMats.Length + 1];
            System.Array.Copy(currentMats, newMats, currentMats.Length);
            
            // Create a temporary instance so we can tween it without affecting other objects
            _instancedOutlineMat = new Material(outlineMaterial);
            _instancedOutlineMat.SetFloat(shaderFloatName, 0f); // Start invisible
            newMats[newMats.Length - 1] = _instancedOutlineMat;
            
            playerRenderer.materials = newMats;
        }

        // 2. SNAP: Camera Cut & Time Freeze
        if (parryCamera) parryCamera.Priority = 20;
        if (blackAndWhiteVolume) blackAndWhiteVolume.weight = 1f;
        Time.timeScale = slowMotionScale;

        // 3. SPAWN TEXT
        GameObject textObj = null;
        TextMeshPro tmpComponent = null;

        if (floatingTextPrefab)
        {
            // Spawn at player position + offset
            textObj = Instantiate(floatingTextPrefab, transform.position + textOffset, Quaternion.identity);
            tmpComponent = textObj.GetComponent<TextMeshPro>();
            if (tmpComponent) tmpComponent.text = ""; // Start empty
        }

        // --- ANIMATION LOOP (Runs during the freeze) ---
        float timer = 0f;
        int charIndex = 0;
        float typeTimer = 0f;

        while (timer < cinematicDuration)
        {
            // Use unscaled delta time because TimeScale is near zero
            float dt = Time.unscaledDeltaTime; 
            timer += dt;

            // A. Billboard the Text (Always face camera)
            if (textObj != null)
            {
                // Simple billboard technique: Forward matches Camera Forward
                textObj.transform.forward = Camera.main.transform.forward;
                // Optional: Keep it near player if player moves (though they shouldn't be moving)
                textObj.transform.position = transform.position + textOffset;
            }

            // B. Typing Effect
            if (tmpComponent != null && charIndex < textMessage.Length)
            {
                typeTimer += dt;
                if (typeTimer >= typingSpeed)
                {
                    typeTimer = 0f;
                    tmpComponent.text += textMessage[charIndex];
                    charIndex++;
                    // Optional: Play a typing sound here
                }
            }

            // C. Fade In Shader Highlight
            if (_instancedOutlineMat != null)
            {
                float currentVal = _instancedOutlineMat.GetFloat(shaderFloatName);
                float newVal = Mathf.MoveTowards(currentVal, 1f, dt * shaderFadeSpeed);
                _instancedOutlineMat.SetFloat(shaderFloatName, newVal);
            }

            yield return null;
        }

        // --- CLEANUP (Fade Out) ---

        if (parryCamera) parryCamera.Priority = 0; // Cut back to main cam

        // Smoothly restore time and remove B&W
        float blendBack = 0f;
        while (blendBack < 1f)
        {
            blendBack += Time.unscaledDeltaTime * 2f; // 0.5s fade out
            Time.timeScale = Mathf.Lerp(slowMotionScale, 1f, blendBack);
            if (blackAndWhiteVolume) blackAndWhiteVolume.weight = Mathf.Lerp(1f, 0f, blendBack);
            
            // Fade out the shader as well
            if (_instancedOutlineMat != null)
                _instancedOutlineMat.SetFloat(shaderFloatName, 1f - blendBack);

            yield return null;
        }

        // Final Reset
        if (playerRenderer && _instancedOutlineMat != null)
        {
            // Revert to original material array (Remove the outline pass)
            Material[] mats = playerRenderer.materials;
            if (mats.Length > 1)
            {
                Material[] originalMats = new Material[mats.Length - 1];
                System.Array.Copy(mats, originalMats, mats.Length - 1);
                playerRenderer.materials = originalMats;
            }
            Destroy(_instancedOutlineMat); // Clean up memory
        }

        if (textObj) Destroy(textObj); // Remove the text
        if (playerInput) playerInput.ActivateInput();
        Time.timeScale = 1f;
        if (blackAndWhiteVolume) blackAndWhiteVolume.weight = 0f;
    }
}