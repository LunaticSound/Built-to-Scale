// Script assets have changed for v2.3.0 see
// https://help.yoyogames.com/hc/en-us/articles/360005277377 for more information
function scr_tut_starts(){

if(tut_running_space && !tut_over_space && global.beat_count mod halves == 0){	
	audio_play_sound(snd_tut_space, 1, 0);
	audio_play_sound(snd_tut_activate, 1, 0);	
	with(tut_id){ 
		with(instance_create_layer(x , y , "Inst_upper", obj_tut_ani)){
			player_id = other.player_id;		
		}
	}
	alarm[6] = quarters;
	alarm[7] = halves;
	tut_over_space = true;
}

if(tut_running_harden && !tut_over_harden && global.beat_count%halves == 0){	
	audio_play_sound(snd_tut_harden, 1, 0);
	audio_play_sound(snd_tut_activate, 1, 0);	
	with(tut_id){ 
		with(instance_create_layer(x , y , "Inst_upper", obj_tut_ani)){
			player_id = other.player_id;		
		}
	}
	alarm[6] = quarters;
	alarm[9] = halves;
	tut_over_harden = true;
}

if(tut_running_dash && !tut_over_dash && global.beat_count%halves == 0){	
	audio_play_sound(snd_tut_dash, 1, 0);
	audio_play_sound(snd_tut_activate, 1, 0);	
	with(tut_id){ 
		with(instance_create_layer(x , y , "Inst_upper", obj_tut_ani)){
			player_id = other.player_id;		
		}
	}
	alarm[6] = quarters;
	alarm[8] = halves;
	tut_over_dash = true;
}

}