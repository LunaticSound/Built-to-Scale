/// @description Harden TUT
// You can write your code in this editor

	audio_play_sound(skill_pause_snd[skill_pause_counter], 1, false);
	audio_play_sound(snd_skill_harden, 1, false);
	audio_play_sound(snd_harden_recharge, 1, false);
	harden_animation = instance_create_layer(x, y, "Inst_upper", obj_jelly_steel);
	image_blend = c_silver;
	alarm[1] = skill_harden_cooldown;
	alarm[2] = skill_harden_duration;
	skill_harden_active = true;
	skill_harden_cool = false;
//	with(other) effect_create_above(ef_ring, x - 50 , y - 200 , 2, c_ltgray);
//	with(other) effect_create_above(ef_ring, x - 50 , y - 200 , 1, c_silver);
	global.tut_harden_switch = true;
	tut_running_harden = false;
