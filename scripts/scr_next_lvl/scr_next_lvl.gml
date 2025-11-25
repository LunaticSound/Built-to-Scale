// Script assets have changed for v2.3.0 see
// https://help.yoyogames.com/hc/en-us/articles/360005277377 for more information
function scr_next_lvl(){
if(x > 8550) nxt_lvl = true; 
if(nxt_lvl && global.beat_count == global.beat_max - 1){ 
	
	switch (life)
{
	case 4:      
		heart_5 = instance_create_layer(320, 64, "Inst_upper", obj_heart);
	
	    case 3:
		heart_4 = instance_create_layer(256, 64, "Inst_upper", obj_heart);
	
	    case 2:
        heart_3 = instance_create_layer(192, 64, "Inst_upper", obj_heart);
	
	    case 1:
        heart_2 = instance_create_layer(128, 64, "Inst_upper", obj_heart);
}

life = 5;
	nxt_lvl = false;
	room_goto_next();
}


}