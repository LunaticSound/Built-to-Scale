/// @description Insert description here
// You can write your code in this editor

var controller_input = false;
	if (array_length(gamepads) > 0){
		if(sprite_index == Pressentertostart_2024_08_20_02_06_40) sprite_index = spr_press_x;
		if(gamepad_button_check_pressed(gamepads[0], gp_face1)) controller_input = true;
	}
	
	if (array_length(gamepads) = 0){
		if(sprite_index == spr_press_x) sprite_index = Pressentertostart_2024_08_20_02_06_40;
	}
	
if(controller_input){
	next = true;
audio_play_sound(snd_start, 1, false);
}

if(global.beat_count == 0 && next) room_goto_next();