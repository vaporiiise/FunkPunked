using UnityEngine;

public class PunchingBag : MonoBehaviour
{
    [Header("Stats")]
    public int health = 999; 
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

        knockbackTarget = transform.position + hitDirection.normalized * knockbackForce;
        knockedBack = true;
    }

    private void Update()
    {
        if (knockedBack)
        {
            transform.position = Vector3.Lerp(transform.position, knockbackTarget, Time.deltaTime * returnSpeed);

            if (Vector3.Distance(transform.position, knockbackTarget) < 0.05f)
            {
                knockedBack = false;
            }
        }
        else
        {
            transform.position = Vector3.Lerp(transform.position, originalPosition, Time.deltaTime * returnSpeed);
        }
    }
}

