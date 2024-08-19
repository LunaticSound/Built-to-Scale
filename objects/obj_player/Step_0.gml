/// @description Insert description here
// You can write your code in this editor


scr_movement();
scr_grow_and_freeze();
scr_dash();
scr_harden();
scr_lose_life();
scr_next_lvl();
scr_dead();

if (damage_cooldown > 0) {
    damage_cooldown -= 1;
}

