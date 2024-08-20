/// @description Insert description here
// You can write your code in this editor

if(global.beat_count%(global.beat_max/4*3){
	var dist = abs(camera_get_view_x(view_camera[0]) + 1000 - x);
	if(dist < 2020){
	var shot = instance_create_layer(x, y - 45, "Inst_upper", obj_bullet_wheel);
	audio_play_sound_dist(snd_shot_wheel, x, 2000, 1);
	effect_create_above(ef_smoke, x - 60, y, 2, c_gray);
	shot_happened = true;
	alarm[0] = 10;
	with(shot){
	shot_duration = other.shot_duration;
	direction = other.shot_dir;
	speed = other.shot_speed;
	image_xscale = other.shot_size;
	image_yscale = other.shot_size;
}