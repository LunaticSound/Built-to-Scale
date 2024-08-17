// Script assets have changed for v2.3.0 see
// https://help.yoyogames.com/hc/en-us/articles/360005277377 for more information
function scr_dash(){
if (dash){
	dash_count += 1;	
	dash_charging = true;
	}
if(dash_charging){
	if(!dash or dash_count >= dash_max ){
		// mach coolen dash scheiß
		audio_stop_sound(dash_charge_sound);
		audio_play_sound(snd_dash, 1, false);
		dash_charging = false;
		dash_act = true;
		dash = false;
	}
}

if(dash_act){
	if(face_right){
		x += round(dash_count);
		dash_count -= round(dash_count/4);
		}
	if(!face_right){
		x -= round(dash_count);
		dash_count -= round(dash_count/4);
		}
	}

if(dash_count <= 3) dash_act = false;
}