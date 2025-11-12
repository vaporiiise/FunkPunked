using System.Collections.Generic;
using UnityEngine;

public class BeatInputBuffer : MonoBehaviour
{
    // Queue to store player input timestamps (or just counts)
    private Queue<float> attackQueue = new Queue<float>();

    /// <summary>
    /// Call this when the player presses an attack button
    /// </summary>
    public void QueueAttack()
    {
        attackQueue.Enqueue(Time.time);
        Debug.Log("Queued attack at: " + Time.time);
    }

    /// <summary>
    /// Returns true if there is at least one queued attack
    /// </summary>
    public bool HasQueuedAttack()
    {
        return attackQueue.Count > 0;
    }

    /// <summary>
    /// Removes one attack from the queue (used by BeatSystem)
    /// </summary>
    public void DequeueAttack()
    {
        if (attackQueue.Count > 0)
            attackQueue.Dequeue();
    }

    /// <summary>
    /// Optional: Clear all queued attacks
    /// </summary>
    public void Clear()
    {
        attackQueue.Clear();
    }
}