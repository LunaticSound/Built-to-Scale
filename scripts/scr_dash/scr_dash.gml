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
		// dash_act = true;
		dash_charging = false;
		dash_act = true;
		dash = false;
	}
}

if(dash_act){
	if(face_right){
		x += round(dash_count /2);
		dash_count -= round(dash_count/6);
		}
	if(!face_right){
		x -= round(dash_count /2);
		dash_count -= round(dash_count/6);
		}
	}

if(dash_count <= 5) dash_act = false;
}