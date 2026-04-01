using UnityEngine;
using Unity.Cinemachine;
using System.Collections;

public class CinemachineGroupLerper : MonoBehaviour
{
    [Header("References")]
    [SerializeField] private CinemachineTargetGroup targetGroup;
    [SerializeField] private int targetIndex = 1; // Index 1 is usually the second object

    [Header("Settings")]
    [SerializeField] private float lerpDuration = 0.5f;

    private Coroutine _activeLerp;

    /// <summary>
    /// Increases the weight of the target to 1.
    /// </summary>
    public void IncreaseWeight()
    {
        StartLerp(6f);
    }

    /// <summary>
    /// Decreases the weight of the target to 0.
    /// </summary>
    public void DecreaseWeight()
    {
        StartLerp(0f);
    }

    private void StartLerp(float targetWeight)
    {
        if (targetGroup == null) return;
        
        if (_activeLerp != null) StopCoroutine(_activeLerp);
        _activeLerp = StartCoroutine(LerpWeightRoutine(targetWeight));
    }

    private IEnumerator LerpWeightRoutine(float endWeight)
    {
        float elapsedTime = 0f;
        float startWeight = targetGroup.Targets[targetIndex].Weight;

        while (elapsedTime < lerpDuration)
        {
            elapsedTime += Time.unscaledDeltaTime; // Using unscaled to work with your slow-mo
            float newWeight = Mathf.Lerp(startWeight, endWeight, elapsedTime / lerpDuration);
            
            // In Cinemachine, we have to set the weight via the helper method 
            // or re-assign the target to ensure the internal logic updates.
            targetGroup.Targets[targetIndex].Weight = newWeight;
            
            yield return null;
        }

        targetGroup.Targets[targetIndex].Weight = endWeight;
        _activeLerp = null;
    }
}