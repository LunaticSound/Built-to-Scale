/// @description Insert description here
// You can write your code in this editor

if(global.beat_count == global.beat_max / 4 && image_index == 0){
	image_index = 1;
	image_speed = 1;
	audio_play_sound_dist(snd_lightning, x, 1800, 1);
}

if(image_index >= image_number - 1){
	image_speed = 0;
	image_index = 0;	
}