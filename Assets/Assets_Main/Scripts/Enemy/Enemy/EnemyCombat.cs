using UnityEngine;
using System.Collections;
using MoreMountains.Feedbacks;

public class EnemyCombat : MonoBehaviour
{
    [Header("Combat Settings")]
    public int damage = 10;
    public float attackRange = 2.5f;
    public float attackCooldown = 2f;
    public int warningBeatsBefore = 1;

    [Header("References")]
    public MMF_Player attackWarningFeedback;

    private Transform player;
    private EnemyMovement movement;
    private EnemyAnimatorHandler animHandler;
    private BeatScheduler beatScheduler;

    private bool isAttacking = false;
    private bool hasWarned = false;
    private int lastBeatIndex = -1;
    private int attackBeatIndex = -1;

    public void Initialize(Transform playerRef)
    {
        player = playerRef;
    }

    void Start()
    {
        movement = GetComponent<EnemyMovement>();
        animHandler = GetComponentInChildren<EnemyAnimatorHandler>();

        beatScheduler = FindObjectOfType<BeatScheduler>();
        if (beatScheduler != null)
            BeatScheduler.OnBeat += OnBeatReceived;
    }

    void OnDestroy()
    {
        if (beatScheduler != null)
            BeatScheduler.OnBeat -= OnBeatReceived;
    }

    void OnBeatReceived(int beatIndex)
    {
        lastBeatIndex = beatIndex;

        if (player == null || isAttacking)
            return;

        if (movement.DistanceToPlayer() > attackRange)
            return;

        if (attackBeatIndex < beatIndex)
        {
            attackBeatIndex = beatIndex + 1;
            hasWarned = false;
            StartCoroutine(HandleBeatAttack(beatIndex));
        }
    }

    IEnumerator HandleBeatAttack(int currentBeat)
    {
        isAttacking = true;
        movement.StopMovement(true);
        FacePlayer();

        if (!hasWarned)
        {
            attackWarningFeedback?.PlayFeedbacks();
            hasWarned = true;
        }

        yield return new WaitUntil(() => lastBeatIndex >= currentBeat + warningBeatsBefore);

        animHandler?.PlayAttack();

        PlayerStats ps = player.GetComponent<PlayerStats>();
        if (ps != null)
            ps.TakeDamage(damage);

        yield return new WaitForSeconds(attackCooldown);
        isAttacking = false;
        movement.StopMovement(false);
    }

    void FacePlayer()
    {
        if (player == null) return;
        Vector3 dir = (player.position - transform.position).normalized;
        dir.y = 0;
        transform.rotation = Quaternion.LookRotation(dir);
    }
}
