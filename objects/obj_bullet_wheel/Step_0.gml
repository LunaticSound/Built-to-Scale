/// @description Insert description here
// You can write your code in this editor

if(shot_duration < 1) instance_destroy();

shot_duration -= 1;

if (sprite_index == spr_wheel_crack){
	if image_index >= image_number - 1 {
    instance_destroy();
	}
}