/// @description Insert description here
// You can write your code in this editor

toggle = !toggle;
alarm[0] = global.beat_max/4*3;

var dist = abs(camera_get_view_x(view_camera[0]) + 1400 - x);
if(dist < 2200){
	audio_playing = true;
	if (!toggle) sfx = audio_play_sound(snd_stone_mover_left, 1, false, 1 - dist/2200);
	if (toggle) sfx = audio_play_sound(snd_stone_mover_right, 1, false, 1 - dist/2200);
}