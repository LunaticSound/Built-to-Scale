// Script assets have changed for v2.3.0 see
// https://help.yoyogames.com/hc/en-us/articles/360005277377 for more information
function audio_play_sound_dist(sound, x_sound, max_distance, base_volume) {
    // Get the current view position on the x-axis (assuming view[0] is the main viewport)
    var x_view = camera_get_view_x(view_camera[0]);

    // Calculate the distance between the sound source and the viewport center on the x-axis
    var x_view_center = x_view + (camera_get_view_width(view_camera[0]) / 2);
    var distance = abs(x_sound - x_view_center);

    // Clamp the distance to the maximum distance
    if (distance > max_distance) {
        distance = max_distance;
    }

    // Calculate the volume based on distance (inversely proportional)
    var volume = base_volume * (1 - (distance / max_distance));

    // Play the sound with adjusted volume
        audio_play_sound(sound, 1, false, volume);
}