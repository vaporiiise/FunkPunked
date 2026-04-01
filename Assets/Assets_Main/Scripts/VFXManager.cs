using UnityEngine;
using System.Collections.Generic;

public class VFXRecursiveController : MonoBehaviour
{
    [Header("VFX Parent Objects")]
    [Tooltip("Drag the parent GameObjects (like a Sword or a VFX container) here.")]
    public List<GameObject> vfxContainers = new List<GameObject>();

    private List<TrailRenderer> _cachedTrails = new List<TrailRenderer>();
    private List<ParticleSystem> _cachedParticles = new List<ParticleSystem>();

    private void Awake()
    {
        RefreshCache();
    }

    /// <summary>
    /// Finds all TrailRenderers and ParticleSystems within the target GameObjects.
    /// Call this if you instantiate new VFX at runtime.
    /// </summary>
    public void RefreshCache()
    {
        _cachedTrails.Clear();
        _cachedParticles.Clear();

        foreach (GameObject container in vfxContainers)
        {
            if (container == null) continue;

            // GetComponentsInChildren(true) finds even deactivated ones
            _cachedTrails.AddRange(container.GetComponentsInChildren<TrailRenderer>(true));
            _cachedParticles.AddRange(container.GetComponentsInChildren<ParticleSystem>(true));
        }
    }

    public void StartVFX()
    {
        foreach (var trail in _cachedTrails) 
        {
            if (trail) trail.emitting = true;
        }

        foreach (var ps in _cachedParticles)
        {
            if (ps) ps.Play(); // Starts spawning particles
        }
    }

    public void StopVFX()
    {
        foreach (var trail in _cachedTrails)
        {
            if (trail) trail.emitting = false;
        }

        foreach (var ps in _cachedParticles)
        {
            if (ps) ps.Stop(); // Stops spawning new particles, lets old ones die
        }
    }

    public void ClearVFX()
    {
        foreach (var trail in _cachedTrails)
        {
            if (trail) { trail.emitting = false; trail.Clear(); }
        }

        foreach (var ps in _cachedParticles)
        {
            if (ps) ps.Clear(); // Instantly deletes existing particles
        }
    }
}