/// @description Insert description here
// You can write your code in this editor


if(damage && image_xscale > 0.12){
		image_xscale -= grow_size * 2;
		image_yscale -= grow_size * 2;
	}

scr_movement();
scr_grow_and_freeze();
scr_dash();
scr_harden();
scr_lose_life();
scr_next_lvl();

if (damage_cooldown > 0) {
    damage_cooldown -= 1;
}

