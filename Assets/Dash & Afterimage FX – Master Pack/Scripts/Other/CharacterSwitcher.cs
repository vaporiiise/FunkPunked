using UnityEngine;
using TMPro;

/// <summary>
/// Allows switching between multiple characters and displaying related effect info.
/// Moves camera smoothly to follow the active character.
/// </summary>
namespace AfterimageFX
{
    public class CharacterSwitcher : MonoBehaviour
    {
        [Tooltip("Array of characters to switch between.")]
        public GameObject[] characters;

        [Tooltip("UI Text to display the currently selected effect name.")]
        public TextMeshProUGUI effectText;

        [Tooltip("Array of effect names to display (must match characters array size).")]
        public string[] effects;

        [Tooltip("Speed at which the camera moves when switching characters.")]
        public float cameraSpeed = 2.0f;

        private int currentIndex = 0; // Index of the currently active character

        private void Start()
        {
            // 🔄 Refresh all characters at startup to ensure clean state (e.g., reset VFX)
            for (int i = 0; i < characters.Length; i++)
            {
                if (characters[i] != null)
                {
                    characters[i].SetActive(true);   // Temporarily activate to trigger OnEnable/setup
                    characters[i].SetActive(false);  // Deactivate to reset everything
                }
            }

            UpdateCharacter();    // Activate the current character
            UpdateEffectText();   // Update the UI with the current effect name
        }

        private void Update()
        {
            if (Input.GetKeyDown(KeyCode.UpArrow))
            {
                ChangeCharacter(1); // Next character
            }
            else if (Input.GetKeyDown(KeyCode.DownArrow))
            {
                ChangeCharacter(-1); // Previous character
            }
        }

        /// <summary>
        /// Switches to the next or previous character in the array.
        /// </summary>
        /// <param name="direction">1 for next, -1 for previous.</param>
        private void ChangeCharacter(int direction)
        {
            if (characters.Length == 0 || characters[currentIndex] == null)
                return;

            // Deactivate the currently active character
            characters[currentIndex].SetActive(false);

            // Calculate the new character index (looping)
            currentIndex += direction;
            if (currentIndex >= characters.Length) currentIndex = 0;
            if (currentIndex < 0) currentIndex = characters.Length - 1;

            // Activate the new character
            if (characters[currentIndex] != null)
            {
                characters[currentIndex].SetActive(true);
                UpdateEffectText();

                // Move the main camera to focus on the new character
                if (Camera.main != null)
                {
                    Vector3 cameraTarget = characters[currentIndex].transform.position + new Vector3(0, 2, -5);
                    StartCoroutine(MoveCamera(Camera.main, cameraTarget));
                }
            }
        }

        /// <summary>
        /// Smoothly moves the camera from its current position to the target position.
        /// </summary>
        private System.Collections.IEnumerator MoveCamera(Camera cam, Vector3 targetPosition)
        {
            float elapsedTime = 0f;
            Vector3 startingPosition = cam.transform.position;

            while (elapsedTime < 1f)
            {
                cam.transform.position = Vector3.Lerp(startingPosition, targetPosition, elapsedTime);
                elapsedTime += Time.deltaTime * cameraSpeed;
                yield return null;
            }

            // Ensure the camera reaches the final target position exactly
            cam.transform.position = targetPosition;
        }

        /// <summary>
        /// Activates only the current character and disables the rest.
        /// </summary>
        private void UpdateCharacter()
        {
            for (int i = 0; i < characters.Length; i++)
            {
                characters[i].SetActive(i == currentIndex);
            }
        }

        /// <summary>
        /// Updates the UI text with the name of the current character's effect.
        /// </summary>
        private void UpdateEffectText()
        {
            if (effectText != null)
            {
                if (effects.Length > currentIndex && !string.IsNullOrEmpty(effects[currentIndex]))
                {
                    effectText.text = effects[currentIndex];
                }
                else
                {
                    effectText.text = "No Effect";
                }
            }
        }
    }
}