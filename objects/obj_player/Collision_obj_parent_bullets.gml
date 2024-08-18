/// @description Insert description here
// You can write your code in this editor

with(other){
	instance_destroy();
}

grow = true;
damage = true;
if (skill_pause) alarm[0] += global.beat_max - global.beat_count;
image_xscale = 0.12;
image_yscale = 0.12;

if (face_right) sprite_index = damage_sprite_r;
if (!face_right) sprite_index = damage_sprite_l;

life -= 1;