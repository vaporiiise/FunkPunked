using UnityEngine;
using System.Collections;

/// <summary>
/// Creates a dissolve afterimage effect by gradually increasing the dissolve shader value.
/// </summary>
namespace AfterimageFX
{
    public class DissolveEffect : MonoBehaviour, IAfterimageEffect
    {
        private MeshRenderer meshRenderer;
        private Material[] afterimageMaterials;

        [Tooltip("Material used for the dissolve afterimage effect.")]
        public Material afterimageMaterial;

        /// <summary>
        /// Initializes the dissolve effect with a mesh snapshot and random tiling.
        /// </summary>
        /// <param name="mesh">Mesh used for the afterimage clone.</param>
        /// <param name="lifetime">Time in seconds before the dissolve completes and the object is destroyed.</param>
        public void InitializeAfterimage(Mesh mesh, float lifetime)
        {
            meshRenderer = GetComponent<MeshRenderer>();
            MeshFilter meshFilter = GetComponent<MeshFilter>();

            if (meshRenderer == null || meshFilter == null)
            {
                Debug.LogError("DissolveEffect requires both MeshRenderer and MeshFilter!");
                return;
            }

            meshFilter.mesh = mesh;

            int submeshCount = mesh.subMeshCount;
            afterimageMaterials = new Material[submeshCount];

            for (int i = 0; i < submeshCount; i++)
            {
                afterimageMaterials[i] = new Material(afterimageMaterial);
            }

            meshRenderer.materials = afterimageMaterials;

            // Assign a random dissolve tiling value for variation
            float randomTiling = Random.Range(0.2f, 10f);

            foreach (Material mat in afterimageMaterials)
            {
                if (mat.HasProperty("_Dissolve_Tilling"))
                {
                    mat.SetFloat("_Dissolve_Tilling", randomTiling);
                }
            }

            // Start dissolve animation and destroy after lifetime
            StartCoroutine(FadeOut(lifetime));
            Destroy(gameObject, lifetime);
        }

        /// <summary>
        /// Gradually increases the dissolve amount over the object's lifetime.
        /// </summary>
        /// <param name="lifetime">Duration of the dissolve effect.</param>
        private IEnumerator FadeOut(float lifetime)
        {
            // Poczekaj 1 sekundę zanim zacznie znikać
            yield return new WaitForSeconds(0.1f);

            float time = 0f;

            while (time < lifetime)
            {
                float dissolve = Mathf.Lerp(0f, 1f, time / lifetime);

                foreach (Material mat in afterimageMaterials)
                {
                    if (mat.HasProperty("_Dissolve_Amount"))
                    {
                        mat.SetFloat("_Dissolve_Amount", dissolve);
                    }
                }

                time += Time.deltaTime;
                yield return null;
            }
        }

    }
}