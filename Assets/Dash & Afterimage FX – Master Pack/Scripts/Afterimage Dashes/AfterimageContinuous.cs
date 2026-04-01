using UnityEngine;

/// <summary>
/// Continuously creates afterimages as long as a key is held down.
/// Useful for effects like "ghost trail" or sustained power modes.
/// </summary>
namespace AfterimageFX
{
    public class AfterimageContinuous : MonoBehaviour
    {
        [Header("Afterimage Settings")]
        [Tooltip("Prefab that contains a component implementing IAfterimageEffect.")]
        public GameObject afterimagePrefab;

        [Tooltip("The SkinnedMeshRenderer to bake the mesh from.")]
        public SkinnedMeshRenderer skinnedMeshRenderer;

        [Tooltip("Time between afterimage spawns while holding the key.")]
        public float afterimageInterval = 0.05f;

        [Tooltip("How long each afterimage remains in the scene.")]
        public float afterImageLifetime = 0.5f;

        private float afterimageTimer = 0f;

        private void Update()
        {
            if (Input.GetKey(KeyCode.R))
            {
                afterimageTimer -= Time.deltaTime;

                if (afterimageTimer <= 0f)
                {
                    CreateAfterimage();
                    afterimageTimer = afterimageInterval;
                }
            }
        }

        /// <summary>
        /// Bakes the current state of the skinned mesh and applies an afterimage effect.
        /// </summary>
        void CreateAfterimage()
        {
            if (skinnedMeshRenderer == null)
            {
                Debug.LogError("❌ SkinnedMeshRenderer is not assigned!");
                return;
            }

            if (afterimagePrefab == null)
            {
                Debug.LogError("❌ Afterimage prefab is not assigned!");
                return;
            }

            Mesh snapshotMesh = new Mesh();
            skinnedMeshRenderer.BakeMesh(snapshotMesh);

            IAfterimageEffect effectScript = afterimagePrefab.GetComponent<IAfterimageEffect>();

            if (effectScript != null)
            {
 
                    // Instantiate a new GameObject and apply the effect
                    GameObject afterimage = Instantiate(afterimagePrefab, transform.position, transform.rotation);
                    afterimage.transform.localScale = transform.localScale;

                    IAfterimageEffect newEffectScript = afterimage.GetComponent<IAfterimageEffect>();
                    if (newEffectScript != null)
                    {
                        newEffectScript.InitializeAfterimage(snapshotMesh, afterImageLifetime);
                    }
                    else
                    {
                        Debug.LogError("❌ No valid IAfterimageEffect script found on the newly instantiated object!");
                    }
                
            }
            else
            {
                Debug.LogError("❌ No IAfterimageEffect script found on afterimagePrefab!");
            }
        }
    }
}