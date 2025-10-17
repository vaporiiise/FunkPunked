using UnityEngine;
using System.Collections;

[DisallowMultipleComponent]
public class ForceMoveTest : MonoBehaviour
{
    public float testDuration = 2f;
    public Vector3 testVelocity = new Vector3(3f, 0f, 0f);
    Rigidbody rb;
    Vector3 startPos;

    void Start()
    {
        rb = GetComponent<Rigidbody>();
        startPos = transform.position;
        StartCoroutine(Test());
    }

    IEnumerator Test()
    {
        Debug.Log("ForceMoveTest started. Forcing rb.velocity each FixedUpdate for " + testDuration + "s");
        float t = 0f;
        while (t < testDuration)
        {
            t += Time.deltaTime;
            if (rb != null)
            {
                rb.isKinematic = false;
                rb.linearVelocity = testVelocity;
            }
            else transform.position += testVelocity * Time.deltaTime;

            yield return null;
        }

        Debug.Log($"ForceMoveTest finished. StartPos={startPos}, EndPos={transform.position}");
        if (Vector3.Distance(startPos, transform.position) < 0.01f)
            Debug.LogError("Player DID NOT MOVE. Something is externally constraining or resetting the transform/velocity every frame.");
        else
            Debug.Log("Player moved normally during ForceMoveTest.");
    }
}