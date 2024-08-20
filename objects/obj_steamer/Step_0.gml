/// @description Insert description here
// You can write your code in this editor

var dist = abs(camera_get_view_x(view_camera[0]) - x);
	if(dist < 2020){

if(global.beat_count%eights == 0){
	eight_count += 1;
}

if(eight_count == 3){
	if(!played_first){
	instance_create_layer(x - 146, y - 380, "Inst_upper", obj_steam)
	audio_play_sound(snd_steam_horn_1, 1, false, dist/600);
	played_first = true;
	}
}

if(eight_count == 7){
	if(!played_second){
	instance_create_layer(x - 172, y + 50, "Inst_upper", obj_steam)
	audio_play_sound(snd_steam_horn_2, 1, false, dist/600);
	played_second = true;
	}
}

if(eight_count == 13){
	if(!played_third){
	instance_create_layer(x - 146, y - 380, "Inst_upper", obj_steam)
	audio_play_sound(snd_steam_horn_3, 1, false, dist/600);
	played_third = true;
	}
}

if(eight_count == 15){
	if(!played_fourth){
	instance_create_layer(x - 172, y + 50, "Inst_upper", obj_steam)
	audio_play_sound(snd_steam_horn_4, 1, false, dist/600);
	played_fourth = true;
	}
}

if(eight_count == 16){
	played_first = false;
	played_second = false;
	played_third = false;
	played_fourth = false;
	eight_count = 0;
}
}

if(buttons_pressed == 2){
	alarm[0] = 60;
	audio_play_sound(snd_steam_down, 1, false);
	buttons_pressed = 3;
}

if(go_down){
	y += 2;
	button_1.y += 3;
	button_2.y += 3;
	if(y > 1500){
	with(button_1){
		instance_destroy();
	}	
	with(button_2){
		instance_destroy();
	}
	instance_destroy();
	}
}