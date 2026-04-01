using UnityEngine;

/// <summary>
/// Controls the creation of afterimage effects during a dash action.
/// Bakes the mesh from a SkinnedMeshRenderer and applies a visual effect.
/// </summary>
namespace AfterimageFX
{
    public class AfterimageController : MonoBehaviour
    {
        [Header("Afterimage Settings")]
        [Tooltip("Prefab with an IAfterimageEffect component (e.g. VFXEffect, GlowEffect, etc).")]
        public GameObject afterimagePrefab;

        [Tooltip("SkinnedMeshRenderer used to bake the mesh snapshot.")]
        public SkinnedMeshRenderer skinnedMeshRenderer;

        [Tooltip("Interval (in seconds) between afterimages during dash.")]
        public float afterimageInterval = 0.05f;

        [Tooltip("Total duration (in seconds) of the dash effect.")]
        public float dashDuration = 0.2f;

        [Tooltip("How long each afterimage lasts before disappearing.")]
        public float afterImageLifetime = 0.5f;

        private bool isDashing = false;
        private float dashTimer = 0f;
        private float afterimageTimer = 0f;

        private void Update()
        {
            // Trigger dash and afterimage sequence with key R
            if (Input.GetKeyDown(KeyCode.R) && !isDashing)
            {
                StartDash();
            }

            if (isDashing)
            {
                DashUpdate();
            }
        }

        /// <summary>
        /// Initializes the dash effect and resets timers.
        /// </summary>
        void StartDash()
        {
            isDashing = true;
            dashTimer = dashDuration;
            afterimageTimer = 0f;
        }

        /// <summary>
        /// Updates dash timing and handles afterimage spawning.
        /// </summary>
        void DashUpdate()
        {
            dashTimer -= Time.deltaTime;
            afterimageTimer -= Time.deltaTime;

            if (afterimageTimer <= 0f)
            {
                CreateAfterimage();
                afterimageTimer = afterimageInterval;
            }

            if (dashTimer <= 0f)
            {
                isDashing = false;
            }
        }

        /// <summary>
        /// Bakes the current SkinnedMeshRenderer into a Mesh and applies the selected afterimage effect.
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

            // Bake current animated mesh into a static mesh snapshot
            Mesh snapshotMesh = new Mesh();
            skinnedMeshRenderer.BakeMesh(snapshotMesh);

// Instantiate klona
GameObject afterimage = Instantiate(afterimagePrefab, transform.position, transform.rotation);
afterimage.transform.localScale = transform.localScale;

// 🔍 Szukamy CloneEffect bezpośrednio
CloneEffect clone = afterimage.GetComponent<CloneEffect>();
if (clone != null)
{
    CloneEffect.NextAfterimageMaterials = skinnedMeshRenderer.sharedMaterials;
    clone.InitializeAfterimage(snapshotMesh, afterImageLifetime);
}
else
{
    // Jeśli to nie CloneEffect, próbujemy zwykły interfejs
    IAfterimageEffect generic = afterimage.GetComponent<IAfterimageEffect>();
    if (generic != null)
    {
        generic.InitializeAfterimage(snapshotMesh, afterImageLifetime);
    }
    else
    {
        Debug.LogError("❌ No IAfterimageEffect script found on the instantiated afterimage object!");
    }
}

        }
    }
}