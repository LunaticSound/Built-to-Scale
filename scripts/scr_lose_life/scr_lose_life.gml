// Script assets have changed for v2.3.0 see
// https://help.yoyogames.com/hc/en-us/articles/360005277377 for more information
function scr_lose_life(){
switch (life)
{
    case 6:
    break;
	
	case 5:
        with(heart_6) instance_destroy();
    break;

    case 4:
        with(heart_5) instance_destroy();
    break;
	
	    case 3:
        with(heart_4) instance_destroy();
    break;
	
	    case 2:
        with(heart_3) instance_destroy();
    break;
	
	    case 1:
        with(heart_2) instance_destroy();
    break;
	
	    case 0:
        with(heart_1) instance_destroy();
		image_blend = c_black;
		dead = true;
    break;
}
}