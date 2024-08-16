// Script assets have changed for v2.3.0 see
// https://help.yoyogames.com/hc/en-us/articles/360005277377 for more information

function scr_growth(){
	if (!skill){	
	if (grow) image_xscale += growth_rate;
	if (grow) image_yscale += growth_rate;

	if (!grow) image_xscale -= growth_rate;
	if (!grow) image_yscale -= growth_rate;
}
	
if (grow) counter += 1;
if (!grow) counter -= 1;

if (counter = beat_time){ 
	audio_play_sound(snd_clap, 1, false);
	grow = false;
	}

if (counter = 0){ 
	audio_play_sound(snd_loop, 0, false);
	audio_play_sound(snd_utz, 1, false);
	grow = true;
	}
	

}