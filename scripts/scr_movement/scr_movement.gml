// Script assets have changed for v2.3.0 see
// https://help.yoyogames.com/hc/en-us/articles/360005277377 for more information
function scr_movement(){
		var controller_input_l = false;
	if (array_length(gamepads) > 0){
		if(gamepad_button_check(gamepads[0], gp_padl) or (gamepad_axis_value(gamepads[0], gp_axislh)) < 0) controller_input_l = true;
	}
	
			var controller_input_r = false;
	if (array_length(gamepads) > 0){
		if(gamepad_button_check(gamepads[0], gp_padr) or (gamepad_axis_value(gamepads[0], gp_axislh)) > 0) controller_input_r = true;
	}
	
			var controller_input_u = false;
	if (array_length(gamepads) > 0){
		if(gamepad_button_check(gamepads[0], gp_padu) or (gamepad_axis_value(gamepads[0], gp_axislv)) < 0) controller_input_u = true;
	}
	
			var controller_input_d = false;
	if (array_length(gamepads) > 0){
		if(gamepad_button_check(gamepads[0], gp_padd) or (gamepad_axis_value(gamepads[0], gp_axislv)) > 0) controller_input_d = true;
	}
	
if(!dead){
		if (x < room_width - 64){
	if (controller_input_r or keyboard_check(ord("D"))){ 
		x += spd;
		if (!face_right){
			sprite_index = spr_jelly;
			mask_index = spr_jelly_coll;
			// if (damage) sprite_index = spr_jelly;
			face_right = true;
			}
		}
	}
	if (x > 64){
		if (controller_input_l or keyboard_check(ord("A"))){
			x -= spd;
			if(face_right){
				sprite_index = spr_jelly_flip;
				mask_index = spr_jelly_flip_coll;
				// if (damage) sprite_index = spr_jelly_flip;
				face_right = false;
			}
		}
	}
	if (y < room_height - 128){
		if (controller_input_d or keyboard_check(ord("S"))){
			y += spd;
		}}
	if (y > 96){
		if (controller_input_u or keyboard_check(ord("W"))){
			y -= spd;
		}}
	}
}