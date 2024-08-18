// Script assets have changed for v2.3.0 see
// https://help.yoyogames.com/hc/en-us/articles/360005277377 for more information
function scr_grow_and_freeze(){
	if(keyboard_check_pressed(vk_space)){
	if(skill_pause = false && !damage){
	audio_play_sound(skill_pause_snd[skill_pause_counter], 1, false);
	var ring = instance_create_layer(x, y, "Inst_upper", obj_player_ring);
	with(ring){
		image_xscale = other.image_xscale;
		image_yscale = other.image_yscale;
		if(!other.face_right) sprite_index = spr_jelly_ring_flip;
	}
	skill_pause_counter += 1;
	if(skill_pause_counter > 2) skill_pause_counter = 0;
	skill_pause = true;
	alarm[0] = global.beat_max/2;
	}
}
	
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
	if(global.beat_count == 0){
		if (!loop_switch){
			audio_play_sound(snd_loop_1, 1, false);
			loop_switch = true;
		}
		else if (loop_switch){
			audio_play_sound(snd_loop_2, 1, false);
			loop_switch = false;
		}
	}

}