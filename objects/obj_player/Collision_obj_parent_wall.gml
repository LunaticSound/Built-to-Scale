/// @description Insert description here
// You can write your code in this editor

grow = true;
damage = true;
if (skill_pause) alarm[0] += global.beat_max - global.beat_count;
image_xscale = 0.25;
image_yscale = 0.25;

if (face_right) sprite_index = damage_sprite_r;
if (!face_right) sprite_index = damage_sprite_l;

x = previous_x;
y = previous_y;

life -= 1;