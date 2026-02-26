using System.Collections;
using UnityEngine;

public class EnemySpawner : MonoBehaviour
{
    public GameObject enemyPrefab;
    public Transform spawnPoint;
    public float waveInterval = 30f;
    public int enemiesPerWave = 2;
    public float delayBetweenEnemies = 0.5f;

    void Start()
    {
        StartCoroutine(SpawnerRoutine());
    }

    IEnumerator SpawnerRoutine()
    {
        while (true) // Loop indefinitely
        {
            // Spawn the wave
            for (int i = 0; i < enemiesPerWave; i++)
            {
                Instantiate(enemyPrefab, spawnPoint.position, spawnPoint.rotation);
                
                // Wait briefly before spawning the next enemy in this wave
                yield return new WaitForSeconds(delayBetweenEnemies);
            }

            // Wait for the long interval before the next wave starts
            yield return new WaitForSeconds(waveInterval);
        }
    }
}