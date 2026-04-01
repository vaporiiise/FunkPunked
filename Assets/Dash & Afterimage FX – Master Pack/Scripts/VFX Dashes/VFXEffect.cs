using UnityEngine;
using UnityEngine.VFX;
using System.Collections;

/// <summary>
/// Controls a Visual Effect Graph afterimage/trail effect.
/// </summary>
namespace AfterimageFX
{
    public class VFXEffect : MonoBehaviour, IAfterimageEffect
    {
        [Tooltip("Assign the VFX Graph instance in the Inspector.")]
        public VisualEffect vfxInstance;

        [Tooltip("The name of the boolean parameter in the VFX Graph that controls the trail.")]
        public string trailBoolParameter = "CanDrawTrail";

        private Coroutine stopRoutine;

        private void Awake()
        {
            // Reinitialize the Visual Effect to ensure it's in a clean state
            vfxInstance.Reinit();

            // Disable trail at the start
            vfxInstance.SetBool(trailBoolParameter, false);
        }

        /// <summary>
        /// Enables the trail effect for a limited time based on the provided lifetime.
        /// </summary>
        /// <param name="snapshotMesh">Not used here, but required by the interface.</param>
        /// <param name="lifetime">Duration in seconds to keep the trail active.</param>
        public void InitializeAfterimage(Mesh snapshotMesh, float lifetime)
        {
            if (vfxInstance == null) return;

            // Enable trail drawing in the VFX Graph
            vfxInstance.SetBool(trailBoolParameter, true);

            // Stop any existing coroutine before starting a new one
            if (stopRoutine != null)
            {
                StopCoroutine(stopRoutine);
            }

            // Start coroutine to stop the trail after the lifetime
            stopRoutine = StartCoroutine(VFXStop(lifetime));
        }

        /// <summary>
        /// Coroutine that waits for a certain time before disabling the trail.
        /// </summary>
        /// <param name="lifetime">How long to wait before disabling the trail.</param>
        private IEnumerator VFXStop(float lifetime)
        {
            yield return new WaitForSeconds(lifetime);

            if (vfxInstance != null)
            {
                // Only disables the trail; the effect remains active
                vfxInstance.SetBool(trailBoolParameter, false);
            }
        }

        /// <summary>
        /// Immediately stops the trail effect and cancels the lifetime coroutine.
        /// </summary>
        public void StopEffect()
        {
            if (stopRoutine != null)
            {
                StopCoroutine(stopRoutine);
            }

            if (vfxInstance != null)
            {
                vfxInstance.SetBool(trailBoolParameter, false);
            }
        }
    }
}