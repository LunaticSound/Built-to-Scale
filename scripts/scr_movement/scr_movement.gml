// Script assets have changed for v2.3.0 see
// https://help.yoyogames.com/hc/en-us/articles/360005277377 for more information
function scr_movement(){
		if (x < room_width - 64){
	if (keyboard_check(vk_right) or keyboard_check(ord("D"))){ 
		x += spd;
		if (!face_right){
			sprite_index = spr_jelly;
			if (damage) sprite_index = spr_jelly;
			face_right = true;
			}
		}
	}
	if (x > 64){
		if (keyboard_check(vk_left) or keyboard_check(ord("A"))){
			x -= spd;
			if(face_right){
				sprite_index = spr_jelly_flip;
				if (damage) sprite_index = spr_jelly_flip;
				face_right = false;
			}
		}
	}
	if (y < room_height - 128){
		if (keyboard_check(vk_down) or keyboard_check(ord("S"))){
			y += spd;
		}}
	if (y > 96){
		if (keyboard_check(vk_up) or keyboard_check(ord("W"))){
			y -= spd;
		}}
	
}