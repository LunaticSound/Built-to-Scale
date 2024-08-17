/// @description Insert description here
// You can write your code in this editor

spd = 6;
dash = false;
dash_count = 0;
dash_charging = false;
dash_act = false;
dash_max = global.beat_max/2 + 2;
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

damage_sprite_r = spr_jelly;
damage_sprite_l = spr_jelly_flip;

skill_pause_snd = [snd_skill_pause, snd_skill_pause_1, snd_skill_pause_2];

heart_1 = instance_create_layer(64, 64, "Inst_upper", obj_heart);
heart_2 = instance_create_layer(128, 64, "Inst_upper", obj_heart);
heart_3 = instance_create_layer(192, 64, "Inst_upper", obj_heart);
heart_4 = instance_create_layer(256, 64, "Inst_upper", obj_heart);
heart_5 = instance_create_layer(320, 64, "Inst_upper", obj_heart);