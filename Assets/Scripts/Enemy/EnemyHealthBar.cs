using UnityEngine;
using UnityEngine.UI;
using System.Collections;

public class EnemyHealthBar : MonoBehaviour
{
    [Header("UI Settings")]
    [Tooltip("Assign the Image component that fills the health bar.")]
    public Image healthFill; 

    [Tooltip("Base color of the health bar.")]
    public Color normalColor = Color.white;

    [Tooltip("Color during damage glitch pulse.")]
    public Color damageColor = new Color(0.4f, 0.8f, 1f);

    [Header("Glitch Effect Settings")]
    public float glitchDuration = 0.25f;
    public float glitchIntensity = 15f;

    [Header("Bar Offset")]
    public Vector3 barOffset = new Vector3(0, 2.75f, 0);

    private Camera mainCam;
    private Coroutine glitchRoutine;

    void Start()
    {
        mainCam = Camera.main;

        if (healthFill != null)
            healthFill.color = normalColor;
    }

    void LateUpdate()
    {
        if (mainCam)
            transform.rotation = Quaternion.LookRotation(transform.position - mainCam.transform.position);
    }

    public void InitializeHealth(int maxHealth)
    {
        if (healthFill != null)
            healthFill.fillAmount = 1f; 
    }

    public void UpdateHealth(int currentHealth, int maxHealth)
    {
        if (healthFill != null)
        {
            float fill = Mathf.Clamp01((float)currentHealth / maxHealth);
            healthFill.fillAmount = fill;
        }
    }

    public void PlayDamageEffect()
    {
        if (glitchRoutine != null)
            StopCoroutine(glitchRoutine);

        glitchRoutine = StartCoroutine(DamageGlitchEffect());
    }

    private IEnumerator DamageGlitchEffect()
    {
        float elapsed = 0f;

        while (elapsed < glitchDuration)
        {
            float offset = Random.Range(-glitchIntensity, glitchIntensity) * 0.01f;
            transform.localPosition = barOffset + new Vector3(offset, 0, 0);

            if (healthFill != null)
                healthFill.color = damageColor;

            elapsed += Time.deltaTime;
            yield return null;
        }

        transform.localPosition = barOffset;
        if (healthFill != null)
            healthFill.color = normalColor;

        glitchRoutine = null;
    }
}
