/// @description Insert description here
// You can write your code in this editor

if(wobble_count < global.beat_max/2){ 
	x = def_x + irandom_range(-3, 3);
	y = player.y + irandom_range(-3, 3);
	wobble_count += 1;
	alarm[1] = 1;
}

if(wobble_count >= global.beat_max/2){
	x = def_x;
	y = player.y;
	attacking = true;
	audio_play_sound(snd_diver_attack, 1, false);
	charging = false;
	alarm[2] = 120;
	wobble_count +=1;
}

