using UnityEngine;
using UnityEngine.UI;

public class EnemyHealthBar : MonoBehaviour
{
    [SerializeField] private Image fillImage;
    private float maxHealth;
    private Transform cam;

    void Start()
    {
        if (Camera.main != null)
            cam = Camera.main.transform;
    }

    public void SetMaxHealth(float value)
    {
        maxHealth = Mathf.Max(1f, value); 
        fillImage.fillAmount = 1f;
    }

    public void SetHealth(float value)
    {
        fillImage.fillAmount = Mathf.Clamp01(value / maxHealth);
    }

    void LateUpdate()
    {
        if (cam != null)
        {
            Vector3 dir = transform.position - cam.position;
            dir.y = 0; 
            transform.rotation = Quaternion.LookRotation(dir);
        }
    }
}