/// @description Insert description here
// You can write your code in this editor

if(!skill_harden_active){
	grow = true;
	damage = true;
	if (skill_pause) alarm[0] += global.beat_max - global.beat_count;
	image_xscale = 0.12;
	image_yscale = 0.12;
	if (face_right) sprite_index = damage_sprite_r;
	if (!face_right) sprite_index = damage_sprite_l;
	life -= 1;
}

if(skill_harden_active){
	harden_animation = instance_create_layer(x, y, "Inst_upper", obj_jelly_steel)	
}

x = previous_x;
y = previous_y;

