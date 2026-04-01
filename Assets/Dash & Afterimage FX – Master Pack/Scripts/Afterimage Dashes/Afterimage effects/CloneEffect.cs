using UnityEngine;

namespace AfterimageFX
{
    public class CloneEffect : MonoBehaviour, IAfterimageEffect
    {
        public static Material[] NextAfterimageMaterials;

        private MeshRenderer meshRenderer;
        private MeshFilter meshFilter;

        public void InitializeAfterimage(Mesh snapshotMesh, float lifetime)
        {
            meshFilter = GetComponent<MeshFilter>();
            if (meshFilter == null) meshFilter = gameObject.AddComponent<MeshFilter>();

            meshRenderer = GetComponent<MeshRenderer>();
            if (meshRenderer == null) meshRenderer = gameObject.AddComponent<MeshRenderer>();

            meshFilter.mesh = snapshotMesh;

            int submeshCount = snapshotMesh.subMeshCount;
            Material[] afterimageMaterials = new Material[submeshCount];

            if (NextAfterimageMaterials != null && NextAfterimageMaterials.Length == submeshCount)
            {
                for (int i = 0; i < submeshCount; i++)
                {
                    afterimageMaterials[i] = new Material(NextAfterimageMaterials[i]);
                }
                NextAfterimageMaterials = null;
            }
            else
            {
                Debug.LogWarning("⚠️ No source materials found for clone. Using default material.");
                for (int i = 0; i < submeshCount; i++)
                {
                    afterimageMaterials[i] = new Material(Shader.Find("Standard"));
                }
            }

            meshRenderer.sharedMaterials = afterimageMaterials;

            // ❌ Bez fade'owania, tylko po prostu zniszcz po czasie
            Destroy(gameObject, lifetime);
        }
    }
}
