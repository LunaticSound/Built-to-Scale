// Script assets have changed for v2.3.0 see
// https://help.yoyogames.com/hc/en-us/articles/360005277377 for more information
function scr_dead(){
	if(dead){
	size = 0;
	max_size = 0;
	if(global.beat_count == 0) room_restart();
	}

}