using System.Collections;
using System.Collections.Generic;
using UnityEngine;

public class HitFlash : MonoBehaviour
{
    [Header("Setup")]
    // Drag all your Skinned Mesh Renderers into this list in the Inspector
    [SerializeField] private List<Renderer> characterRenderers = new List<Renderer>();
    
    [Header("Settings")]
    [SerializeField] private Color flashColor = Color.white;
    [SerializeField] private float flashDuration = 0.1f;

    private List<Material> allMaterials = new List<Material>();
    private List<Color> originalColors = new List<Color>();

    void Awake()
    {
        // Gather every material from every renderer you manually added
        foreach (Renderer rend in characterRenderers)
        {
            if (rend == null) continue;

            foreach (Material mat in rend.materials)
            {
                allMaterials.Add(mat);
                
                // Store the original color (checking common shader property names)
                if (mat.HasProperty("_Color"))
                    originalColors.Add(mat.color);
                else if (mat.HasProperty("_BaseColor"))
                    originalColors.Add(mat.GetColor("_BaseColor"));
                else
                    originalColors.Add(Color.white); // Fallback
            }
        }
    }

    public void Flash()
    {
        StopAllCoroutines();
        StartCoroutine(FlashRoutine());
    }

    private IEnumerator FlashRoutine()
    {
        SetColors(flashColor);
        yield return new WaitForSeconds(flashDuration);
        ResetColors();
    }

    private void SetColors(Color color)
    {
        for (int i = 0; i < allMaterials.Count; i++)
        {
            if (allMaterials[i].HasProperty("_Color"))
                allMaterials[i].SetColor("_Color", color);
            else if (allMaterials[i].HasProperty("_BaseColor"))
                allMaterials[i].SetColor("_BaseColor", color);
        }
    }

    private void ResetColors()
    {
        for (int i = 0; i < allMaterials.Count; i++)
        {
            if (allMaterials[i].HasProperty("_Color"))
                allMaterials[i].SetColor("_Color", originalColors[i]);
            else if (allMaterials[i].HasProperty("_BaseColor"))
                allMaterials[i].SetColor("_BaseColor", originalColors[i]);
        }
    }
}