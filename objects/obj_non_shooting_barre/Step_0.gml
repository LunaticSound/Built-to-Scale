/// @description Insert description here
// You can write your code in this editor

if(global.beat_count%(global.beat_max/8) == 0){
	effect_create_above(ef_smokeup, x - 60, y, 2, c_gray);
}