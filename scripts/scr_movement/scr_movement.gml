// Script assets have changed for v2.3.0 see
// https://help.yoyogames.com/hc/en-us/articles/360005277377 for more information
function scr_movement(){
	if (keyboard_check(vk_right)) x += spd;
	if (keyboard_check(vk_left)) x -= spd;
	if (keyboard_check(vk_down)) y += spd;
	if (keyboard_check(vk_up)) y -= spd;
}