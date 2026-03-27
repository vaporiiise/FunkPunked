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
        Debug.Log("Global: Player and Enemy will now pass through each other.");
    }

    public void EnablePlayerEnemyCollision()
    {
        int playerLayer = LayerMask.NameToLayer(playerLayerName);
        int enemyLayer = LayerMask.NameToLayer(enemyLayerName);

        Physics.IgnoreLayerCollision(playerLayer, enemyLayer, false);
        Debug.Log("Global: Player and Enemy will now collide again.");
    }
}