using UnityEngine;
using System.Collections;

/// <summary>
/// Creates a glitch-style afterimage effect by applying randomized shader values.
/// </summary>
namespace AfterimageFX
{
    public class GlitchEffect : MonoBehaviour, IAfterimageEffect // 🔧 Fixed typo from "GlicthEffect"
    {
        private MeshRenderer meshRenderer;
        private Material[] afterimageMaterials;

        [Tooltip("Base material used for the afterimage glitch effect.")]
        public Material afterimageMaterial;

        [Tooltip("Starting value for the _Power shader property.")]
        public float StartPower = 0.5f;

        [Tooltip("Ending value for the _Power shader property.")]
        public float EndPower = 1.5f;

        [Header("Random Ranges")]
        [Tooltip("Range for the _TexturePower shader property.")]
        public Vector2 TexturePowerRange = new Vector2(0.5f, 5f);

        [Tooltip("Range for the _GlitchPower shader property.")]
        public Vector2 GlitchPowerRange = new Vector2(0.1f, 0.7f);

        [Tooltip("Range for the _GlitchScroll shader property.")]
        public Vector2 GlitchScrollRange = new Vector2(-0.5f, 0.5f);

        [Tooltip("Range for the _GlitchTiling shader property.")]
        public Vector2 GlitchTilingRange = new Vector2(0.5f, 3f);

        /// <summary>
        /// Initializes the glitch effect using a snapshot mesh and randomized shader parameters.
        /// </summary>
        /// <param name="snapshotMesh">Mesh to display as the afterimage.</param>
        /// <param name="lifetime">How long the effect should last before fading and destroying itself.</param>
        public void InitializeAfterimage(Mesh snapshotMesh, float lifetime)
        {
            meshRenderer = GetComponent<MeshRenderer>();
            MeshFilter meshFilter = GetComponent<MeshFilter>();

            if (meshRenderer == null || meshFilter == null)
            {
                Debug.LogError("GlitchEffect requires both MeshRenderer and MeshFilter!");
                return;
            }

            meshFilter.mesh = snapshotMesh;
            int submeshCount = snapshotMesh.subMeshCount;
            afterimageMaterials = new Material[submeshCount];

            for (int i = 0; i < submeshCount; i++)
            {
                Material mat = new Material(afterimageMaterial);

                // 🔹 Assign randomized values to each material property
                float texturePower = Random.Range(TexturePowerRange.x, TexturePowerRange.y);
                float glitchPower = Random.Range(GlitchPowerRange.x, GlitchPowerRange.y);
                float glitchScroll = Random.Range(GlitchScrollRange.x, GlitchScrollRange.y);
                float glitchTiling = Random.Range(GlitchTilingRange.x, GlitchTilingRange.y);

                if (mat.HasProperty("_TexturePower"))
                    mat.SetFloat("_TexturePower", texturePower);
                if (mat.HasProperty("_GlitchPower"))
                    mat.SetFloat("_GlitchPower", glitchPower);
                if (mat.HasProperty("_GlitchScroll"))
                    mat.SetFloat("_GlitchScroll", glitchScroll);
                if (mat.HasProperty("_GlitchTiling"))
                    mat.SetFloat("_GlitchTiling", glitchTiling);

                afterimageMaterials[i] = mat;
            }

            meshRenderer.materials = afterimageMaterials;

            // Start fading effect and destroy the GameObject after its lifetime
            StartCoroutine(FadeOut(lifetime));
            Destroy(gameObject, lifetime);
        }

        /// <summary>
        /// Smoothly fades out shader parameters over time.
        /// </summary>
        /// <param name="lifetime">Duration of the fade effect.</param>
        private IEnumerator FadeOut(float lifetime)
        {
            float time = 0f;

            while (time < lifetime)
            {
                float alpha = Mathf.Lerp(1f, 0f, time / lifetime);
                float power = Mathf.Lerp(StartPower, EndPower, time / lifetime);
                float colorpos = Mathf.Lerp(0f, 1f, time / lifetime);

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