using UnityEngine;
using UnityEngine.UI;
using System.Collections;
using System.Collections.Generic;

public class EnemyHealthBar : MonoBehaviour
{
    [Header("UI Settings")]
    public GameObject healthIconPrefab;       // Prefab for one health image
    public Transform iconContainer;           // Where icons spawn (e.g., a Horizontal Layout Group)
    public Color normalColor = Color.white;
    public Color damageColor = new Color(0.4f, 0.8f, 1f); // sky blue tint
    public float glitchDuration = 0.25f;
    public float glitchIntensity = 15f;

    private List<Image> icons = new List<Image>();
    private Camera mainCam;

    void Start()
    {
        mainCam = Camera.main;
    }

    void LateUpdate()
    {
        if (mainCam)
            transform.rotation = Quaternion.LookRotation(transform.position - mainCam.transform.position);
    }

    public void InitializeHealth(int maxHealth)
    {
        foreach (Transform child in iconContainer)
            Destroy(child.gameObject);

        icons.Clear();

        for (int i = 0; i < maxHealth; i++)
        {
            GameObject icon = Instantiate(healthIconPrefab, iconContainer);
            Image img = icon.GetComponent<Image>();
            img.color = normalColor;
            icons.Add(img);
        }
    }

    public void UpdateHealth(int currentHealth)
    {
        for (int i = 0; i < icons.Count; i++)
        {
            icons[i].enabled = i < currentHealth;
        }
    }

    public void PlayDamageEffect()
    {
        StopAllCoroutines();
        StartCoroutine(DamageGlitchEffect());
    }

    private IEnumerator DamageGlitchEffect()
    {
        float elapsed = 0f;
        while (elapsed < glitchDuration)
        {
            float offset = Random.Range(-glitchIntensity, glitchIntensity);
            transform.localPosition = new Vector3(0, 2.75f, 0) + new Vector3(offset * 0.01f, 0, 0);
            foreach (var img in icons)
                img.color = damageColor;

            elapsed += Time.deltaTime;
            yield return null;
        }

        transform.localPosition = new Vector3(0, 2.75f, 0);
        foreach (var img in icons)
            img.color = normalColor;
    }
}