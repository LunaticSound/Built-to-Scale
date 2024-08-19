/// @description Insert description here
// You can write your code in this editor

if(!skill_harden_active){
	with(other){
		instance_destroy();
	}
	damage = true;
	if(damage_cooldown <= 0){
		life -= 1;
		audio_play_sound(choose(snd_player_damage, snd_player_damage_2, snd_player_damage_3, snd_player_damage_4), 1, false);
		damage_cooldown = 15;
		alarm[3] = 30;
	}
}

if(skill_harden_active){
	harden_animation = instance_create_layer(x, y, "Inst_upper", obj_jelly_steel);
	harden_animation.image_xscale = image_xscale;
	harden_animation.image_yscale = image_yscale;
	harden_animation.x = x;
	harden_animation.y = y;
	other.direction = -other.direction;
}