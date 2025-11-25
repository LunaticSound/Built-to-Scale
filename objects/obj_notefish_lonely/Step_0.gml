/// @description Insert description here
// You can write your code in this editor

y = anchorY + sin(timer*frequency)*amplitude;
timer++;

if(global.beat_count == global.beat_max / 2){
	sprite_index = spr_notefish_turn;
	image_index = 0;
	sounds = [choose(snd_notefish_1, snd_notefish_1_alt), choose(snd_notefish_2, snd_notefish_2_alt), choose(snd_notefish_3, snd_notefish_3_alt), choose(snd_notefish_4, snd_notefish_4_alt), choose(snd_notefish_5, snd_notefish_5_alt)];
	audio_play_sound_dist(sounds[irandom(4)], x, 2200, 1);
}

if(sprite_index = spr_notefish_turn){
	if(image_index >= image_number - 1) sprite_index = spr_notefish;
}

