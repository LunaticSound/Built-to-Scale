/// @description Insert description here
// You can write your code in this editor

if(global.beat_count%eights == 0){
	eight_count += 1;
}

if(eight_count == 3){
	instance_create_layer(x - 248, y - 395, "Inst", obj_steam)
}

if(eight_count == 7){
	instance_create_layer(x - 275, y + 30, "Inst", obj_steam)
}

if(eight_count == 8){
	eight_count = 0;
}
