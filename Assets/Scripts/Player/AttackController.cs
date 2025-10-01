using UnityEngine;

[RequireComponent(typeof(Animator))]
public class AttackController : MonoBehaviour
{
    [Header("Attack Settings")]
    public float attackRange = 1.5f;
    public LayerMask enemyLayer;
    public int damage = 1;

    private Animator animator;

    private void Start()
    {
        animator = GetComponent<Animator>();
    }

    public void TryAttack()
    {
        bool onBeat = BeatManager.Instance != null && BeatManager.Instance.IsOnBeat();

        if (animator != null)
            animator.SetTrigger("Attack");

        Collider[] hits = Physics.OverlapSphere(transform.position, attackRange, enemyLayer);

        if (hits.Length > 0)
        {
            if (onBeat)
            {
                // ✅ Enemy + OnBeat = HIT
                foreach (var hit in hits)
                {
                    Enemy enemy = hit.GetComponent<Enemy>();
                    if (enemy != null)
                    {
                        enemy.TakeDamage(damage);

                        if (ComboManager.Instance != null)
                            ComboManager.Instance.AddCombo();

                        if (UIManager.Instance != null)
                            UIManager.Instance.ShowHit();
                    }
                }
            }
            else
            {
                // ❌ Enemy but OffBeat = MISS
                if (ComboManager.Instance != null)
                    ComboManager.Instance.ResetCombo();

                if (UIManager.Instance != null)
                    UIManager.Instance.ShowMiss();
            }
        }
        else
        {
            // ❌ No enemy hit at all = MISS
            if (ComboManager.Instance != null)
                ComboManager.Instance.ResetCombo();

            if (UIManager.Instance != null)
                UIManager.Instance.ShowMiss();
        }
    }


    private void OnDrawGizmosSelected()
    {
        Gizmos.color = Color.red;
        Gizmos.DrawWireSphere(transform.position, attackRange);
    }
}