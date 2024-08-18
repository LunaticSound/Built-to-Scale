/// @description Insert description here
// You can write your code in this editor

scr_movement();
scr_cat_scale();
scr_dash();

switch (life)
{
    case 5:
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
		game_restart();
    break;
}

show_debug_message(string(image_xscale))