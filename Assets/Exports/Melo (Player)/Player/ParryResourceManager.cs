using UnityEngine;
using UnityEngine.UI;

public class ParryResourceManager : MonoBehaviour
{
    [Header("Settings")]
    public int maxBars = 3;
    public float rechargeTimePerBar = 15f;
    
    [Header("UI Reference")]
    [Tooltip("A single Image with Image Type: Filled")]
    [SerializeField] private Image barFillImage; 

    private float _currentTotalPercent;
    private float PercentPerBar => 1f / maxBars; 

    void Awake()
    {
        // Start full
        _currentTotalPercent = 1f;
        UpdateUI();
    }

    void Update()
    {
        if (_currentTotalPercent < 1f)
        {
            _currentTotalPercent += (Time.deltaTime / rechargeTimePerBar) * PercentPerBar;
            _currentTotalPercent = Mathf.Clamp01(_currentTotalPercent);
            UpdateUI();
        }
    }

    public bool CanParry()
    {
        return _currentTotalPercent >= PercentPerBar;
    }

    public void ConsumeBar()
    {
        if (CanParry())
        {
            _currentTotalPercent -= PercentPerBar;
            _currentTotalPercent = Mathf.Max(_currentTotalPercent, 0f);
            UpdateUI();
        }
    }

    private void UpdateUI()
    {
        if (barFillImage != null)
        {
            barFillImage.fillAmount = _currentTotalPercent;
        }
    }
}