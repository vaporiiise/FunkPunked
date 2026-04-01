using UnityEngine;
using System.Collections;

public class GhostTrail : MonoBehaviour
{
    [Header("Settings")]
    public float ghostDelay = 0.05f;      // How often to spawn a ghost
    public float ghostLifetime = 0.5f;   // How long the ghost lasts
    public Material ghostMaterial;       // A transparent or neon material

    private bool isTrailing = false;

    // Call this to start the effect (e.g., when Dashing)
    public void StartTrail()
    {
        if (!isTrailing)
        {
            isTrailing = true;
            StartCoroutine(SpawnTrailRoutine());
        }
    }

    // Call this to stop the effect
    public void StopTrail()
    {
        isTrailing = false;
    }

    IEnumerator SpawnTrailRoutine()
    {
        while (isTrailing)
        {
            // 1. Create a new GameObject for the ghost
            GameObject ghostObj = new GameObject("GhostInstance");
            ghostObj.transform.SetPositionAndRotation(transform.position, transform.rotation);

            // 2. Copy the Mesh (works for SpriteRenderer or MeshRenderer)
            MeshRenderer mr = ghostObj.AddComponent<MeshRenderer>();
            MeshFilter mf = ghostObj.AddComponent<MeshFilter>();
            
            // Get the mesh from the current object
            MeshFilter currentMesh = GetComponent<MeshFilter>();
            if (currentMesh != null) mf.mesh = currentMesh.mesh;

            // 3. Apply the Ghost Material
            mr.material = ghostMaterial;

            // 4. Clean up
            Destroy(ghostObj, ghostLifetime);

            yield return new WaitForSeconds(ghostDelay);
        }
    }
}