using UnityEngine;

namespace AfterimageFX
{
    public class VFXDashControler : MonoBehaviour
    {
        [Header("Afterimage Settings")]
        [Tooltip("Prefab that contains a component implementing VFXEffect.")]
        public GameObject afterimagePrefab;

        [Tooltip("The SkinnedMeshRenderer to bake the mesh from.")]
        public SkinnedMeshRenderer skinnedMeshRenderer;

        private void Update()
        {
            if (Input.GetKey(KeyCode.R))
            {
                CreateAfterimage();
            }
        }

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

            if (effectScript != null && effectScript is VFXEffect)
            {
                effectScript.InitializeAfterimage(snapshotMesh, 0f); // Lifetime ignored
            }
            else
            {
                Debug.LogError("❌ The prefab must contain a VFXEffect script!");
            }
        }
    }
}
