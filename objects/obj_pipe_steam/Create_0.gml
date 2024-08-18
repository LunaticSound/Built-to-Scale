/// @description Insert description here
// You can write your code in this editor

eights = global.beat_max/8;
eight_count = 0;

played_first = false;
played_second = false;
played_third = false;
played_fourth = false;

buttons_pressed = 0;

button_1 = instance_create_layer(x+25, y - 180, "Inst_lowest", obj_steam_button);
with(button_1){
	steamer = other;
};
button_2 = instance_create_layer(x+25, y + 180, "Inst_lowest", obj_steam_button);
with(button_2){
	steamer = other;
};