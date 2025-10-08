using UnityEngine;
using UnityEngine.UI;

public class EnemyHealthBar : MonoBehaviour
{
    [SerializeField] private Image fillImage;
    private float maxHealth;
    private Transform cam;

    void Start()
    {
        // Get the main camera once
        if (Camera.main != null)
            cam = Camera.main.transform;
    }

    public void SetMaxHealth(float value)
    {
        maxHealth = Mathf.Max(1f, value); // avoid divide by zero
        fillImage.fillAmount = 1f;
    }

    public void SetHealth(float value)
    {
        fillImage.fillAmount = Mathf.Clamp01(value / maxHealth);
    }

    void LateUpdate()
    {
        // Face the camera but keep upright
        if (cam != null)
        {
            Vector3 dir = transform.position - cam.position;
            dir.y = 0; // keeps it from tilting up/down
            transform.rotation = Quaternion.LookRotation(dir);
        }
    }
}