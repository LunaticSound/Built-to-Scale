/// @description Insert description here
// You can write your code in this editor

if(!skill_harden_active){
with(other){
	instance_destroy();
}
//	grow = true;
	damage = true;
//	if (skill_pause) alarm[0] += global.beat_max - global.beat_count;
	image_xscale = 0.12;
	image_yscale = 0.12;
	if (face_right) sprite_index = damage_sprite_r;
	if (!face_right) sprite_index = damage_sprite_l;
	audio_play_sound(choose(snd_player_damage, snd_player_damage_2, snd_player_damage_3, snd_player_damage_4), 1, false);
	life -= 1;
}

if(skill_harden_active){
	harden_animation = instance_create_layer(x, y, "Inst_upper", obj_jelly_steel);
	harden_animation.image_xscale = image_xscale;
	harden_animation.image_yscale = image_yscale;
	harden_animation.x = x;
	harden_animation.y = y;
	other.direction = -other.direction;
}