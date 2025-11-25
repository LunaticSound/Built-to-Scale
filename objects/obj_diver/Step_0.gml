/// @description Insert description here
// You can write your code in this editor

if(coll){
	x = lerp(x, def_x, 0.1);
	attacking = false;
}

if(!charging && !attacking){ 
	y = player.y;
	x = lerp(x, def_x, 0.1);
}

if(attacking && !coll){
x = lerp(x, player.x, 0.2);
}

if(dmg > 2){
	audio_play_sound(snd_shot_wheel, 1, false);
	effect_create_above(ef_explosion, x, y, 2, c_orange);
	effect_create_above(ef_explosion, x, y, 2, c_yellow);
	effect_create_above(ef_explosion, x, y, 2, c_red);
	effect_create_above(ef_smoke, x, y, 2, c_gray);
	effect_create_above(ef_smoke, x, y, 2, c_black);
	instance_destroy();
}