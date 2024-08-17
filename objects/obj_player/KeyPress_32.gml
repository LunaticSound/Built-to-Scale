/// @description Insert description here
// You can write your code in this editor

if(skill_pause = false && !damage){
	audio_play_sound(skill_pause_snd[skill_pause_counter], 1, false);
	ring = instance_create_layer(x, y, "Inst_upper", obj_player_ring);
	with(ring){
		image_xscale = other.image_xscale;
		image_yscale = other.image_yscale;
		if(!other.face_right) sprite_index = spr_jelly_ring_flip;
	}
	skill_pause_counter += 1;
	if(skill_pause_counter > 2) skill_pause_counter = 0;
	skill_pause = true;
	alarm[0] = global.beat_max/2;
	};