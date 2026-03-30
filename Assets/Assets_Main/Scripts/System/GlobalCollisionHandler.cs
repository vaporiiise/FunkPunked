using UnityEngine;

public class GlobalCollisionHandler : MonoBehaviour
{
    [SerializeField] private string playerLayerName = "Player";
    [SerializeField] private string enemyLayerName = "Enemy";

    public void DisablePlayerEnemyCollision()
    {
        int playerLayer = LayerMask.NameToLayer(playerLayerName);
        int enemyLayer = LayerMask.NameToLayer(enemyLayerName);

        Physics.IgnoreLayerCollision(playerLayer, enemyLayer, true);
    }

    public void EnablePlayerEnemyCollision()
    {
        int playerLayer = LayerMask.NameToLayer(playerLayerName);
        int enemyLayer = LayerMask.NameToLayer(enemyLayerName);

        Physics.IgnoreLayerCollision(playerLayer, enemyLayer, false);
    }
}