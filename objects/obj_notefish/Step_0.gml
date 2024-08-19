/// @description Insert description here
// You can write your code in this editor

y = anchorY + sin(timer*frequency)*amplitude;
timer++;

if(temple.eight_count == grid_pos_x){
	if(!played){
	sprite_index = spr_notefish_turn;
	image_index = 0;
	if(temple_clear) effect_create_above(ef_spark, x, y, 2, c_yellow);
	sounds = [choose(snd_notefish_1, snd_notefish_1_alt), choose(snd_notefish_2, snd_notefish_2_alt), choose(snd_notefish_3, snd_notefish_3_alt), choose(snd_notefish_4, snd_notefish_4_alt), choose(snd_notefish_5, snd_notefish_5_alt)];
	audio_play_sound(sounds[grid_pos_y-1], 1, false);	
	if(temple_clear) instance_destroy();
	played = true;
	}
}

if(sprite_index = spr_notefish_turn){
	if(image_index >= image_number - 1) sprite_index = spr_notefish;
}

