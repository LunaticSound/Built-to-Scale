/// @description Insert description here
// You can write your code in this editor

if(skill_pause = false){
	audio_play_sound(skill_pause_snd[skill_pause_counter], 1, false);
	skill_pause_counter += 1;
	if(skill_pause_counter > 2) skill_pause_counter = 0;
	skill_pause = true;
	alarm[0] = global.beat_max/2;
	};