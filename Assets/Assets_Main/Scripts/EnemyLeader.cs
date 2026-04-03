using UnityEngine;

public class EnemyLeader : MonoBehaviour
{
    public Transform[] waypoints;
    public Transform player;
    public float speed = 3f;
    public float detectionRange = 8f;
    
    private int index;
    private bool chasing;

    void Update()
    {
        if (!player) return;
        float dist = Vector3.Distance(transform.position, player.position);

        if (dist < detectionRange)
        {
            chasing = true;
            Move(player.position, 0f);
        }
        else
        {
            if (chasing) { chasing = false; }
            if (waypoints.Length > 0)
            {
                Move(waypoints[index].position, 0.1f);
                if (Vector3.Distance(transform.position, waypoints[index].position) < 0.5f)
                    index = (index + 1) % waypoints.Length;
            }
        }
    }

    void Move(Vector3 target, float stop)
    {
        if (Vector3.Distance(transform.position, target) > stop)
        {
            transform.position = Vector3.MoveTowards(transform.position, target, speed * Time.deltaTime);
            transform.LookAt(new Vector3(target.x, transform.position.y, target.z));
        }
    }
}