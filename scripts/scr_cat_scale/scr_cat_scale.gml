// Script assets have changed for v2.3.0 see
// https://help.yoyogames.com/hc/en-us/articles/360005277377 for more information
function scr_cat_scale(){
	var quarters = global.beat_max/4;
	var halves = global.beat_max/2;
	if(!skill_pause){
		if(grow){
			image_xscale += grow_size;
			image_yscale += grow_size;
		}
		if(!grow){
			image_xscale -= grow_size;
			image_yscale -= grow_size;
		}
	}
	if(global.beat_count%quarters == 0){
		if(!clap) audio_play_sound(snd_utz, 1, false);
		if(clap) audio_play_sound(snd_clap, 1, false);
			grow = !grow;	
			clap = !clap;
	}
	if(global.beat_count%halves == 0){
		audio_play_sound(snd_loop, 1, false);
	}

}