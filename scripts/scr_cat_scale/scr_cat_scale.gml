// Script assets have changed for v2.3.0 see
// https://help.yoyogames.com/hc/en-us/articles/360005277377 for more information
function scr_cat_scale(){
	if(!skill_pause && !damage){
		if(grow){
			image_xscale += grow_size;
			image_yscale += grow_size;
//			image_xscale = global.beat_count / global.beat_max * 0.5  + 0.25
//			image_yscale = global.beat_count / global.beat_max * 0.5  + 0.25

		}
		if(!grow){
			image_xscale -= grow_size;
			image_yscale -= grow_size;
//			image_xscale = 0.5 - global.beat_count / global.beat_max * 0.5  + 0.25
//			image_yscale = 0.5 - global.beat_count / global.beat_max * 0.5  + 0.25

		
		
		}
	}
	if(global.beat_count%quarters == 0){
		if(!clap){ 
			audio_play_sound(snd_utz, 1, false);
		}
		if(clap){ 
			audio_play_sound(snd_clap, 1, false);
		}
		if (damage) grow = false;
		grow = !grow;	
		clap = !clap;
		damage = false;
	}
	if(global.beat_count%halves == 0){
		audio_play_sound(snd_loop, 1, false);
	}

}