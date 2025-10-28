using UnityEngine;
using System.Linq;

[DisallowMultipleComponent]
public class SceneInspector : MonoBehaviour
{
    public float overlapCheckRadius = 0.6f;
    public LayerMask overlapMask = ~0; // all layers

    private Rigidbody rb;
    private Animator animator;
    private CharacterController charController;
    private UnityEngine.AI.NavMeshAgent agent;

    void Start()
    {
        rb = GetComponent<Rigidbody>();
        animator = GetComponent<Animator>();
        charController = GetComponent<CharacterController>();
        agent = GetComponent<UnityEngine.AI.NavMeshAgent>();

        Debug.Log("=== SceneInspector START ===");

        Debug.Log($"GameObject: {gameObject.name}, ActiveInHierarchy: {gameObject.activeInHierarchy}");
        Debug.Log($"Parent: {(transform.parent? transform.parent.name : "NONE")}");
        Debug.Log($"Layer: {LayerMask.LayerToName(gameObject.layer)} ({gameObject.layer})");
        Debug.Log($"IsStatic: {gameObject.isStatic}");

        if (rb == null) Debug.LogWarning("Rigidbody: MISSING");
        else
        {
            Debug.Log($"Rigidbody present. isKinematic={rb.isKinematic}, useGravity={rb.useGravity}, mass={rb.mass}, drag={rb.linearDamping}, angularDrag={rb.angularDamping}");
            Debug.Log($"Constraints: posX={rb.constraints.HasFlag(RigidbodyConstraints.FreezePositionX)}, posY={rb.constraints.HasFlag(RigidbodyConstraints.FreezePositionY)}, posZ={rb.constraints.HasFlag(RigidbodyConstraints.FreezePositionZ)} | rotX={rb.constraints.HasFlag(RigidbodyConstraints.FreezeRotationX)}, rotZ={rb.constraints.HasFlag(RigidbodyConstraints.FreezeRotationZ)}");
            Debug.Log($"Interp={rb.interpolation}, CollisionDetection={rb.collisionDetectionMode}");
        }

        if (animator != null)
        {
            Debug.Log($"Animator present. applyRootMotion={animator.applyRootMotion}, updateMode={animator.updateMode}");
        }

        if (charController != null) Debug.Log("CharacterController present (this will conflict with Rigidbody).");
        if (agent != null) Debug.Log("NavMeshAgent present (this can override transform).");

        // List all enabled MonoBehaviours on this object
        var monos = GetComponents<MonoBehaviour>().Where(m => m != this).ToArray();
        Debug.Log($"Other MonoBehaviours count: {monos.Length}");
        foreach (var m in monos) Debug.Log($" - {m.GetType().Name} (enabled={m.enabled})");

        // Overlap check to see if player starts intersecting geometry
        var hits = Physics.OverlapSphere(transform.position, overlapCheckRadius, overlapMask);
        Debug.Log($"OverlapSphere hits count: {hits.Length}");
        foreach (var c in hits) Debug.Log($"  OverlapHit: {c.name} (layer {LayerMask.LayerToName(c.gameObject.layer)})");

        // Check if player is constrained by any parent rigidbody
        Rigidbody parentRb = GetComponentInParent<Rigidbody>();
        if (parentRb != null && parentRb != rb)
            Debug.LogWarning($"Parent Rigidbody found on {parentRb.gameObject.name}. Parent Rigidbody can affect child behavior.");

        // Show time scale
        Debug.Log($"Time.timeScale = {Time.timeScale}");

        Debug.Log("=== SceneInspector END ===");
    }

    void Update()
    {
        // Watch for kinematic toggles at runtime
        if (rb != null)
        {
            if (rb.isKinematic) Debug.LogWarning("Rigidbody.isKinematic is TRUE at runtime.");
        }
    }

    void OnDrawGizmosSelected()
    {
        Gizmos.color = Color.yellow;
        Gizmos.DrawWireSphere(transform.position, overlapCheckRadius);
    }
}
