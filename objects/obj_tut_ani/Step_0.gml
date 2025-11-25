/// @description Insert description here
// You can write your code in this editor

if(!image_changed){
	if(image_index >= image_number - 1){
		sprite_index = spr_tut_ani_1;
		image_changed = true;
	}
}

if(sprite_index = spr_tut_ani_1){
	x = lerp(x, player_id.x, 0.1)
	y = lerp(y, player_id.y, 0.1)
}

if(x <= player_id.x +1) instance_destroy();

