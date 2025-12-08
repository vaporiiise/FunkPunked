using UnityEngine;
using System.Collections;

public class KnockbackHandler : MonoBehaviour
{
    public bool IsKnocked { get; private set; }

    public float knockDuration = 0.15f;
    public float knockForce = 8f;

    private Coroutine knockRoutine;

    public void ApplyKnockback(Vector3 direction, float forceOverride = -1f)
    {
        if (direction == Vector3.zero) return;

        float force = forceOverride > 0 ? forceOverride : knockForce;
        direction.y = 0;
        direction.Normalize();

        if (knockRoutine != null)
            StopCoroutine(knockRoutine);

        knockRoutine = StartCoroutine(KnockRoutine(direction, force));
    }

    private IEnumerator KnockRoutine(Vector3 dir, float force)
    {
        IsKnocked = true;

        float t = knockDuration;

        while (t > 0)
        {
            transform.position += dir * force * Time.deltaTime;
            t -= Time.deltaTime;
            yield return null;
        }

        IsKnocked = false;
    }
}