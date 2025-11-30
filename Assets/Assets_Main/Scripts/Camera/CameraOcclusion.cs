using UnityEngine;
using System.Collections.Generic;

public class CameraOcclusion : MonoBehaviour
{
    [Header("References")]
    public Transform target;              
    public LayerMask occlusionLayers;     
    public Camera cam;                     

    [Header("Settings")]
    [Tooltip("How fast objects fade in/out")]
    public float fadeSpeed = 10f;

    [Tooltip("How transparent the objects get when fully faded (0 = invisible, 1 = fully visible)")]
    [Range(0f, 1f)]
    public float maxFadeAlpha = 0.2f;  // Can adjust in Inspector

    private Dictionary<Renderer, float> fadingObjects = new Dictionary<Renderer, float>();

    private void Update()
    {
        if (cam == null || target == null) return;

        Vector3 dir = target.position - cam.transform.position;
        float distance = dir.magnitude;

        RaycastHit[] hits = Physics.RaycastAll(cam.transform.position, dir.normalized, distance, occlusionLayers);

        HashSet<Renderer> currentlyHit = new HashSet<Renderer>();
        foreach (var hit in hits)
        {
            Renderer rend = hit.collider.GetComponent<Renderer>();
            if (rend != null)
            {
                currentlyHit.Add(rend);
                if (!fadingObjects.ContainsKey(rend))
                    fadingObjects.Add(rend, 0f);
            }
        }

        Dictionary<Renderer, float> updatedAlphas = new Dictionary<Renderer, float>();
        List<Renderer> toRemove = new List<Renderer>();

        foreach (var kvp in fadingObjects)
        {
            Renderer rend = kvp.Key;
            float alpha = kvp.Value;

            if (currentlyHit.Contains(rend))
                alpha += Time.deltaTime * fadeSpeed;
            else
                alpha -= Time.deltaTime * fadeSpeed;

            alpha = Mathf.Clamp01(alpha);
            SetRendererAlpha(rend, Mathf.Lerp(1f, maxFadeAlpha, alpha));

            updatedAlphas[rend] = alpha;

            if (alpha <= 0f && !currentlyHit.Contains(rend))
                toRemove.Add(rend);
        }

        foreach (var kvp in updatedAlphas)
            fadingObjects[kvp.Key] = kvp.Value;

        foreach (var rend in toRemove)
            fadingObjects.Remove(rend);
    }

    private void SetRendererAlpha(Renderer rend, float alpha)
    {
        foreach (Material mat in rend.materials)
        {
            if (mat.HasProperty("_Color"))
            {
                Color c = mat.color;
                c.a = alpha;
                mat.color = c;

                if (alpha < 1f)
                {
                    mat.SetInt("_SrcBlend", (int)UnityEngine.Rendering.BlendMode.SrcAlpha);
                    mat.SetInt("_DstBlend", (int)UnityEngine.Rendering.BlendMode.OneMinusSrcAlpha);
                    mat.SetInt("_ZWrite", 0);
                    mat.DisableKeyword("_ALPHATEST_ON");
                    mat.EnableKeyword("_ALPHABLEND_ON");
                    mat.DisableKeyword("_ALPHAPREMULTIPLY_ON");
                    mat.renderQueue = 3000;
                }
                else
                {
                    mat.SetInt("_SrcBlend", (int)UnityEngine.Rendering.BlendMode.One);
                    mat.SetInt("_DstBlend", (int)UnityEngine.Rendering.BlendMode.Zero);
                    mat.SetInt("_ZWrite", 1);
                    mat.DisableKeyword("_ALPHATEST_ON");
                    mat.DisableKeyword("_ALPHABLEND_ON");
                    mat.DisableKeyword("_ALPHAPREMULTIPLY_ON");
                    mat.renderQueue = -1;
                }
            }
        }
    }
}
