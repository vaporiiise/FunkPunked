using UnityEngine;

public class AnimationAudioManager : MonoBehaviour
{
    [Header("Audio Source")]
    public AudioSource audioSource;

    [Header("Sound Variations (Drag Clips Here)")]
    public AudioClip[] walkSounds;
    public AudioClip[] swingSounds;
    public AudioClip[] hitSounds;
    public AudioClip[] parrySounds;
    public AudioClip[] gotHitSounds;
    public AudioClip[] attackVoiceSounds;
    public AudioClip[] homeRunSounds;
    public AudioClip[] tTsSounds;
    public AudioClip[] hTFSounds;

    /// <summary>
    /// This is called by Animation Events (Walk/Swing) 
    /// AND the Hitbox script (Hit).
    /// </summary>
    public void PlaySound(string soundName)
    {
        if (audioSource == null) return;

        switch (soundName.ToLower())
        {
            case "walk":
                PlayRandomFromList(walkSounds);
                break;
            case "swing":
                PlayRandomFromList(swingSounds);
                break;
            case "hit":
                PlayRandomFromList(hitSounds);
                break;
            case "parry":
                PlayRandomFromList(parrySounds);
                break;
            case "gothit":
                PlayRandomFromList(gotHitSounds);
                break;
            case "atkvoice":
                PlayRandomFromList(attackVoiceSounds);
                break;
            case "homerun":
                PlayRandomFromList(homeRunSounds);
                break;
            case "tts":
                PlayRandomFromList(tTsSounds);
                break;
            case "hts":
                PlayRandomFromList(hTFSounds);
                break;
            default:
                Debug.LogWarning($"Sound name '{soundName}' not recognized!");
                break;
        }
    }

    private void PlayRandomFromList(AudioClip[] clips)
    {
        if (clips == null || clips.Length == 0) return;

        // Pick a random clip from the array
        int randomIndex = Random.Range(0, clips.Length);
        
        // Add subtle pitch variation (0.9 to 1.1) to prevent ear fatigue
        audioSource.pitch = Random.Range(0.9f, 1.1f);
        
        // Play the sound without cutting off previous sounds
        audioSource.PlayOneShot(clips[randomIndex]);
    }
}