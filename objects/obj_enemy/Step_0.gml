/// @description Insert description here
// You can write your code in this editor

scr_groove();

with(spikes){
	if(other.counter == other.beat_time/2){
	image_xscale = 2 * image_xscale;
	image_yscale = 2 * image_yscale;
	audio_play_sound(snd_spikes, 1, false);
	}
	if (other.counter == other.beat_time){ 
	image_xscale = image_xscale / 2;
	image_yscale = image_yscale / 2;
	}
}
