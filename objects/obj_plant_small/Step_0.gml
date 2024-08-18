/// @description Insert description here
// You can write your code in this editor

if (round(image_index) == 8 && !shot_happened){
	var dist = abs(camera_get_view_x(view_camera[0]) - x);
	if(dist < 2020){
	var shot = instance_create_layer(x, y - 45, "Inst_upper", obj_bullet_gear);
	audio_play_sound(snd_spikes, 1, false, dist/600);
	shot_happened = true;
	alarm[0] = 10;
	with(shot){
	direction = other.shot_dir;
	speed = other.shot_speed;
	image_xscale = other.shot_size;
	image_yscale = other.shot_size;
		}
	}
}
