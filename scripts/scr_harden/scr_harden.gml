// Script assets have changed for v2.3.0 see
// https://help.yoyogames.com/hc/en-us/articles/360005277377 for more information
function scr_harden(){
if(keyboard_check_pressed(ord("O"))){
	if(!skill_harden_active){
	harden_animation = instance_create_layer(x, y, "Inst_upper", obj_jelly_steel);
	image_blend = c_purple;
	alarm[2] = skill_harden_cooldown;
	skill_harden_active = true;
		}
	}

if(skill_harden_active){
	if(instance_exists(harden_animation)){
	if (face_right) harden_animation.sprite_index = spr_jelly_steel;	
	if (!face_right) harden_animation.sprite_index = spr_jelly_steel_flip;	
	harden_animation.image_xscale = image_xscale;
	harden_animation.image_yscale = image_yscale;
	harden_animation.x = x;
	harden_animation.y = y;
		}
	}
}