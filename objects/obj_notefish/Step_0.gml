/// @description Insert description here
// You can write your code in this editor

y = anchorY + sin(timer*frequency)*amplitude;
timer++;

if(global.beat_count%eights == 0){
	eight_count +=1;
	played = false;
	if(eight_count > 8) eight_count = 0;
}

if(eight_count == grid_pos_x){
	if(!played){
	effect_create_above(ef_spark, x, y, 1, c_yellow);
	sounds = [choose(snd_notefish_1, snd_notefish_1_alt), choose(snd_notefish_2, snd_notefish_2_alt), choose(snd_notefish_3, snd_notefish_3_alt), choose(snd_notefish_4, snd_notefish_4_alt)];
	audio_play_sound(sounds[grid_pos_y], 1, false);	
	played = true;
	}
}