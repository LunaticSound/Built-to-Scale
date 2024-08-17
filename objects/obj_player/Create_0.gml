/// @description Insert description here
// You can write your code in this editor

spd = 6;
dash = false;
dash_count = 0;
dash_charging = false;
dash_act = false;
dash_max = global.beat_max/4;
dash_velo = 0;

damage = false;
skill_pause = false;
skill_pause_counter = 0;
x_size = 0.25;
y_size = 0.25;
grow = true;
grow_size = 0.01;
clap = false;
image_xscale = x_size;
image_yscale = y_size;
previous_x = x;
previous_y = y;

face_right = true;


skill_pause_snd = [snd_skill_pause, snd_skill_pause_1, snd_skill_pause_2];