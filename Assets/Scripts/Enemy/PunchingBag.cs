using UnityEngine;

public class PunchingBag : MonoBehaviour
{
    [Header("Stats")]
    public int health = 999; // basically endless but can decrease
    public float knockbackForce = 2f;
    public float returnSpeed = 3f;

    private Vector3 originalPosition;
    private bool knockedBack = false;
    private Vector3 knockbackTarget;

    private void Start()
    {
        originalPosition = transform.position;
    }

    public void TakeHit(Vector3 hitDirection)
    {
        health--;
        Debug.Log($"Punching Bag hit! Health = {health}");

        // Knockback target in hit direction
        knockbackTarget = transform.position + hitDirection.normalized * knockbackForce;
        knockedBack = true;
    }

    private void Update()
    {
        if (knockedBack)
        {
            // Move toward knockback target first
            transform.position = Vector3.Lerp(transform.position, knockbackTarget, Time.deltaTime * returnSpeed);

            // If close enough, start returning
            if (Vector3.Distance(transform.position, knockbackTarget) < 0.05f)
            {
                knockedBack = false;
            }
        }
        else
        {
            // Smoothly return to original position
            transform.position = Vector3.Lerp(transform.position, originalPosition, Time.deltaTime * returnSpeed);
        }
    }
}

