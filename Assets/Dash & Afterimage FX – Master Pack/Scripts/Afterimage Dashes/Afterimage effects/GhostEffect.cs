using UnityEngine;
using System.Collections;

namespace AfterimageFX
{
    public class GhostEffect : MonoBehaviour, IAfterimageEffect
    {
        // Components and materials used for the afterimage
        private MeshRenderer meshRenderer;
        private Material[] afterimageMaterials;

        // Configuration fields for the afterimage effect
        public Material afterimageMaterial; // Material used for the ghost
        public float TargetScaleAmount = 0.8f; // Final scale percentage of the ghost
        public float StartPower = 0.5f; // Shader start power
        public float EndPower = 1.5f; // Shader end power
        public Vector3 CloneScale = Vector3.one; // Initial scale for the clone

        // Initializes the ghost afterimage with a mesh snapshot and sets a lifetime
        public void InitializeAfterimage(Mesh snapshotMesh, float lifetime)
        {
            meshRenderer = GetComponent<MeshRenderer>();
            MeshFilter meshFilter = GetComponent<MeshFilter>();

            if (meshRenderer == null || meshFilter == null)
            {
                Debug.LogError("GhostEffect requires both MeshRenderer and MeshFilter!");
                return;
            }

            // Set initial scale and mesh
            transform.localScale = CloneScale;
            meshFilter.mesh = snapshotMesh;

            // Prepare materials for all submeshes
            int submeshCount = snapshotMesh.subMeshCount;
            afterimageMaterials = new Material[submeshCount];

            for (int i = 0; i < submeshCount; i++)
            {
                // Use Instantiate to create a separate instance of the material
                afterimageMaterials[i] = Instantiate(afterimageMaterial);
            }

            // Apply all materials to the renderer at once
            meshRenderer.sharedMaterials = afterimageMaterials;

            // Start the fade out coroutine and destroy the object after its lifetime
            StartCoroutine(FadeOut(lifetime));
            Destroy(gameObject, lifetime);
        }

        // Gradually fades out the ghost effect over time
        private IEnumerator FadeOut(float lifetime)
        {
            float time = 0f;
            Vector3 initialScale = transform.localScale;
            Vector3 targetScale = initialScale * TargetScaleAmount;

            while (time < lifetime)
            {
                float t = time / lifetime;

                // Interpolate properties over time
                float alpha = Mathf.Lerp(1f, 0f, t); // Fade out transparency
                float power = Mathf.Lerp(StartPower, EndPower, t); // Animate shader power
                float colorpos = Mathf.Lerp(0f, 1f, t); // Animate color shift
                Vector3 currentScale = Vector3.Lerp(initialScale, targetScale, t); // Shrink effect

                transform.localScale = currentScale;

                // Set shader properties on all materials
                foreach (Material mat in afterimageMaterials)
                {
                    if (mat.HasProperty("_Alpha"))
                        mat.SetFloat("_Alpha", alpha);

                    if (mat.HasProperty("_Color_Position"))
                        mat.SetFloat("_Color_Position", colorpos);

                    if (mat.HasProperty("_Power"))
                        mat.SetFloat("_Power", power);
                }

                time += Time.deltaTime;
                yield return null;
            }
        }
    }
}
