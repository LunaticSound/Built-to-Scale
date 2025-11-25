// Script assets have changed for v2.3.0 see
// https://help.yoyogames.com/hc/en-us/articles/360005277377 for more information


function scr_grow_and_freeze(){
	var controller_input = false;
	if (array_length(gamepads) > 0){
		if(gamepad_button_check_pressed(gamepads[0], gp_face1)) controller_input = true;
	}
	if(global.tut_space_switch && !skill_cooldown && !tut_running_space && !tut_running_dash && !tut_running_harden && (keyboard_check_pressed(vk_space) or controller_input)){
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
	skill_cooldown = true;
	alarm[0] = global.beat_max/2;
}

var effect_locator = random(image_size);
var jitter = 25;
if(skill_pause) effect_create_above(ef_spark, x + random(jitter) + choose(image_xscale*effect_locator , -image_xscale*effect_locator), y + random(jitter) + choose(image_yscale*(sqrt(sqr(image_size) - sqr(effect_locator))), -image_yscale*(sqrt(sqr(image_size) - sqr(effect_locator)))), 0, choose(c_purple, c_silver));

if(!skill_pause && !damage && !hard_hit){
	if(grow){
		image_xscale = lerp(image_xscale, max_size, grow_size)
		image_yscale = lerp(image_yscale, max_size, grow_size)
	}

	if(!grow){
		image_xscale = lerp(image_xscale, size, grow_size)
		image_yscale = lerp(image_yscale, size, grow_size)
	}
}

if(damage or hard_hit){
	image_xscale = lerp(image_xscale, size, grow_size)
	image_yscale = lerp(image_yscale, size, grow_size)
	}	
	
	if(global.beat_count%quarters == 0){
		if(!clap){ 
			if (!room = rm_start && rm_tut_space) audio_play_sound(snd_utz, 1, false);
		}
		if(clap){ 
			if (!room = rm_start && rm_tut_space) audio_play_sound(snd_clap, 1, false);
		}
		grow = !grow;
		clap = !clap;
	}
	if(global.beat_count == 0){
		if (!loop_switch){
			if (room = rm_start) audio_play_sound(snd_loop_1, 1, false);
			if (room = rm_tut_space){
				if(x<room_width/2) audio_play_sound(snd_tut_1_loop_1, 1, false);
				if(x>room_width/2) audio_play_sound(snd_loop_with_hats_1, 1, false)
			}
			if (room = rm_tut_dash) audio_play_sound(snd_tut_2_loop_1, 1, false);
			if (room = rm_underwater_pipe){ 
				if(x < room_width/2) audio_play_sound(snd_loop_with_frickle_1, 1, false);
				if(x > room_width/2) audio_play_sound(snd_loop_tense_1, 1, false);
			}
			if (room = rm_industrial_1) audio_play_sound(snd_loop_dark_1, 1, false);
			if (room = rm_temple){ 
				bgm = audio_play_sound(snd_loop_low_frickle_1, 1, false);
				if(x > 3530 && x < 5530) audio_sound_gain(bgm, abs(4530 - x) / 1000 , 0);
			}
			loop_switch = true;
		}
		else if (loop_switch){
			if (room = rm_start) audio_play_sound(snd_loop_2, 1, false);
			if (room = rm_tut_space){
				if(x<room_width/2) audio_play_sound(snd_tut_1_loop_2, 1, false);
				if(x>room_width/2) audio_play_sound(snd_loop_with_hats_2, 1, false)
			}
			if (room = rm_tut_dash) audio_play_sound(snd_tut_2_loop_2, 1, false);
			if (room = rm_underwater_pipe){ 
				if(x < room_width/2) audio_play_sound(snd_loop_with_frickle_2, 1, false);
				if(x > room_width/2) audio_play_sound(snd_loop_tense_2, 1, false);
			}
			if (room = rm_industrial_1) audio_play_sound(snd_loop_dark_2, 1, false);
			if (room = rm_temple){ 
				bgm = audio_play_sound(snd_loop_low_frickle_2, 1, false);
				if(x > 3530 && x < 5530) audio_sound_gain(bgm, abs(4530 - x) / 1000 , 0);
			}
			loop_switch = false;
		}
	}

}