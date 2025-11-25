
/// @description Insert description here
// You can write your code in this editor

//if(room != rm_start){

if(!tut_running_space and !tut_running_dash and !tut_running_harden){
	scr_movement();
	scr_dash();
	scr_harden();
}
scr_grow_and_freeze();
scr_lose_life();
scr_next_lvl();
scr_mana();
scr_dead();
scr_tut_starts();


if (damage_cooldown > 0) {
    damage_cooldown -= 1;
}

if(room == rm_industrial_1){
	if(x > 6000){
		if(!diver_create){
		diver = instance_create_layer(x + 1920, y, "Inst", obj_diver);
		with(diver){
		player = other;	
		}
		diver_create = true;
		}
		}
	}
// }


