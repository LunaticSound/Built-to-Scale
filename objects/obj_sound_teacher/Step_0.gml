/// @description Insert description here
// You can write your code in this editor

if(global.beat_count == 0 && global.bars == 0) {
		riddle = audio_play_sound_dist(snd_riddle_melody, x, 1600, 1);
}

if (audio_is_playing(snd_riddle_melody)){
var dist = camera_get_view_x + (camera_get_view_width(view_camera[0]) / 2);

if(dist > 1500 && dist < 1500) audio_sound_gain(riddle, abs(1500 - dist) / 1500 , 0);
}