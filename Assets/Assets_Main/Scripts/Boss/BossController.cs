using UnityEngine;
using System.Collections;

[RequireComponent(typeof(BossProjectileAttack))]
[RequireComponent(typeof(BossMeleeAttack))]
public class BossController : MonoBehaviour
{
    [Header("General")] 
    public Transform player;
    public float chaseSpeed = 3f;
    public float retreatDistance = 5f;

    [Header("Attack Settings")] 
    public float meleeRange = 2f;
    public float projectileCooldown = 3f;
    public float meleeCooldown = 3f;

    private BossProjectileAttack projectileAttack;
    private BossMeleeAttack meleeAttack;
    private Rigidbody rb;

    private bool canAttack = true;
    private bool isAttacking = false;

    private void Start()
    {
        projectileAttack = GetComponent<BossProjectileAttack>();
        meleeAttack = GetComponent<BossMeleeAttack>();
        rb = GetComponent<Rigidbody>();
    }

    private void Update()
    {
        if (!player) return;
        if (isAttacking) return;
        
        float distance = Vector3.Distance(player.position, transform.position);
        Vector3 direction = (player.position - transform.position).normalized;

        if (distance <= meleeRange && canAttack)
        {
            StartCoroutine(PerformMeleeAttack());
        }
        else if (distance > meleeRange && canAttack)
        {
            StartCoroutine(PerformProjectileAttack());
        }
        else
        {
            rb.linearVelocity = direction * chaseSpeed;
        }
    }

    private IEnumerator PerformMeleeAttack()
    {
        isAttacking = true;
        canAttack = false;

        meleeAttack.DoMeleeAttack();

        yield return new WaitForSeconds(meleeCooldown);
        isAttacking = false;
        canAttack = true;
    }

    private IEnumerator PerformProjectileAttack()
    {
        isAttacking = true;
        canAttack = false;

        // Optional: small retreat motion before shooting
        Vector3 retreatPos = transform.position - transform.forward * retreatDistance;
        float t = 0f;
        while (t < 0.5f)
        {
            transform.position = Vector3.Lerp(transform.position, retreatPos, t * 2f);
            t += Time.deltaTime;
            yield return null;
        }

        projectileAttack.FireProjectile(player.position);

        yield return new WaitForSeconds(projectileCooldown);
        isAttacking = false;
        canAttack = true;
    }
}