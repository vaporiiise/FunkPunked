using UnityEngine;

public class Enemy : MonoBehaviour
{
    public int health = 3;

    public void TakeHit()
    {
        health--;
        Debug.Log($"{gameObject.name} took a hit! Health = {health}");

        if (health <= 0)
        {
            Die();
        }
    }

    public void Parried()
    {
        Debug.Log($"{gameObject.name} was parried!");
        // Example: Stun or insta-kill
        Die();
    }

    private void Die()
    {
        Debug.Log($"{gameObject.name} defeated!");
        Destroy(gameObject);
    }
}