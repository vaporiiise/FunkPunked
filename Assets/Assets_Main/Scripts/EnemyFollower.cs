using UnityEngine;

public class EnemyFollower : MonoBehaviour
{
    public Transform leader; 
    public Transform player;
    public float speed = 3.5f; 
    public float stopDist = 2f;
    public float detectionRange = 8f;

    void Update()
    {
        if (!player || !leader) return;
        float distToPlayer = Vector3.Distance(transform.position, player.position);

        Vector3 target = (distToPlayer < detectionRange) ? player.position : leader.position;
        float currentStop = (distToPlayer < detectionRange) ? 0.5f : stopDist;

        if (Vector3.Distance(transform.position, target) > currentStop)
        {
            transform.position = Vector3.MoveTowards(transform.position, target, speed * Time.deltaTime);
            transform.LookAt(new Vector3(target.x, transform.position.y, target.z));
        }
    }
}