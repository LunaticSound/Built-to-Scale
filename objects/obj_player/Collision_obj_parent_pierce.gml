/// @description Insert description here
// You can write your code in this editor

	damage = true;
	if(damage_cooldown <= 0){
		life -= 1;
		audio_play_sound(choose(snd_player_damage, snd_player_damage_2, snd_player_damage_3, snd_player_damage_4), 1, false);
		damage_cooldown = 15;
		alarm[3] = 30;
	}