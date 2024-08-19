/// @description Insert description here
// You can write your code in this editor


if(!skill_harden_active){
	damage = true;
//	image_xscale = 0.12;
//	image_yscale = 0.12;
//	if (face_right) sprite_index = damage_sprite_r;
//	if (!face_right) sprite_index = damage_sprite_l;
			if(damage_cooldown <= 0){
		life -= 1;
		audio_play_sound(choose(snd_player_damage, snd_player_damage_2, snd_player_damage_3, snd_player_damage_4), 1, false);
		damage_cooldown = 15;
		alarm[3] = 30;
	}
}

if(skill_harden_active){
	harden_animation = instance_create_layer(x, y, "Inst_upper", obj_jelly_steel)	
}

x = previous_x;
y = previous_y;

