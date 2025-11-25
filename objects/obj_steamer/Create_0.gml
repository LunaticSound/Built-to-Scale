/// @description Insert description here
// You can write your code in this editor

eights = global.beat_max/8;
eight_count = 0;

played_first = false;
played_second = false;
played_third = false;
played_fourth = false;
go_down = false;
steam_1 = 0;
steam_2 = 0;
steam_3 = 0;
steam_4 = 0;


buttons_pressed = 0;

button_1 = instance_create_layer(x+50, y - 180, "Inst_lower", obj_steam_button);
with(button_1){
	steamer = other;
};
button_2 = instance_create_layer(x+50, y + 180, "Inst_lower", obj_steam_button);
with(button_2){
	steamer = other;
};