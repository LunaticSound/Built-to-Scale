/// @description Skill harden available
// You can write your code in this editor

skill_harden_cool = true;
audio_play_sound(snd_skill_harden_available, 1, false);
effect_create_above(ef_flare, x, y, 3, c_silver);
effect_create_above(ef_flare, x + random_range(-10, 10), y + random_range(-10, 10), 3, c_silver);
effect_create_above(ef_flare, x + random_range(-20, 20), y + random_range(-20, 20), 3, c_silver);
effect_create_above(ef_flare, x + random_range(-10, 10), y + random_range(-10, 10), 3, c_silver);
effect_create_above(ef_flare, x + random_range(-20, 20), y + random_range(-20, 20), 3, c_silver);