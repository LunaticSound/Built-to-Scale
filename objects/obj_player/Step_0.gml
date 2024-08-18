/// @description Insert description here
// You can write your code in this editor

scr_movement();
scr_grow_and_freeze();
scr_dash();
scr_harden();
scr_lose_life();

if(x > 8500 && global.beat_count == global.beat_max - 1) room_goto_next();
