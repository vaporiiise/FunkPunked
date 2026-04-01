using UnityEngine;
using System.Collections.Generic;

[RequireComponent(typeof(Renderer))]
public class SmearEffect : MonoBehaviour
{
    [SerializeField, Tooltip("Number of frames to lag behind for the smear length")]
    private int _frameLag = 2;

    private Queue<Vector3> _recentPositions = new Queue<Vector3>();
    private Material _smearMat;
    private Renderer _renderer;

    // Cache Property IDs for performance
    private static readonly int PositionId = Shader.PropertyToID("_Position");
    private static readonly int PrevPositionId = Shader.PropertyToID("_PrevPosition");

    void Start()
    {
        _renderer = GetComponent<Renderer>();
        _smearMat = _renderer.material;

        // Ensure the queue starts with the current position
        for (int i = 0; i <= _frameLag; i++)
        {
            _recentPositions.Enqueue(transform.position);
        }
    }

    void LateUpdate()
    {
        Vector3 currentPos = transform.position;

        // Maintain the queue size based on frame lag
        _recentPositions.Enqueue(currentPos);
        
        if (_recentPositions.Count > (_frameLag + 1))
        {
            Vector3 prevPos = _recentPositions.Dequeue();
            _smearMat.SetVector(PrevPositionId, prevPos);
        }

        _smearMat.SetVector(PositionId, currentPos);
    }
}