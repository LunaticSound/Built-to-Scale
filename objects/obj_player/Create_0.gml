/// @description Insert description here
// You can write your code in this editor

quarters = global.beat_max/4;
halves = global.beat_max/2;

// values for changing

life = 5;
spd = 6;
size = 0.12;
// y_size = 0.12;
max_size = 0.65;
// max_y_size = 0.65;
grow_size = 0.01;
damage_cooldown = 0;

// init

grow = false;
damage = false;
clap = false;
image_xscale = size;
image_yscale = size;
x_size_factor = image_xscale;
y_size_factor = image_yscale;
previous_x = x;
previous_y = y;
face_right = true;
loop_switch = false;
bar = 2;

// freeze setup

skill_pause = false;
skill_pause_counter = 0;
skill_pause_snd = [snd_skill_pause, snd_skill_pause_1, snd_skill_pause_2];

// harden setup

skill_harden_duration = global.beat_max / 2;
skill_harden_cooldown = global.beat_max * 2;
skill_harden_active = false;
skill_harden_ani = false;
skill_harden_cool = true;

// dash setup
dash = false;
dash_count = 0;
dash_charging = false;
dash_act = false;
dash_max = global.beat_max/2 + 2;
dash_velo = 0;



damage_sprite_r = spr_jelly;
damage_sprite_l = spr_jelly_flip;

heart_1 = instance_create_layer(64, 64, "Inst_upper", obj_heart);
heart_2 = instance_create_layer(128, 64, "Inst_upper", obj_heart);
heart_3 = instance_create_layer(192, 64, "Inst_upper", obj_heart);
heart_4 = instance_create_layer(256, 64, "Inst_upper", obj_heart);
heart_5 = instance_create_layer(320, 64, "Inst_upper", obj_heart);