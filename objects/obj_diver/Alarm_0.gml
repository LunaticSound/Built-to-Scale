/// @description Insert description here
// You can write your code in this editor

alarm[1] = 1;
audio_play_sound(snd_diver_charge, 1, false);
charging = true;
coll = false;
wobble_count = 0;
effect_create_above(ef_flare, x, y, 2, c_yellow);
alarm[0] = global.beat_max * 2;