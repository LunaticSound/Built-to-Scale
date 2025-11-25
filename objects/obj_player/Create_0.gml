/// @description Insert description here
// You can write your code in this editor
// if(room != rm_start){

quarters = global.beat_max div 4;
halves = global.beat_max div 2;

// values for changing

life = 6;
spd = 6;
size = 0.12;
max_size = 0.65;
grow_size = 0.03;
damage_cooldown = 0;
mana = 50;
mana_recharge = global.beat_max;
image_size = 280;

// init

grow = false;
damage = false;
hard_hit = false;
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
dead = false;
diver_create = false;
mana_counter = 0;
nxt_lvl = false;
mask_index = spr_jelly_coll;
if (room == rm_start) global.tut_space_switch = false;
if (room == rm_start) global.tut_dash_switch = false;
if (room == rm_start) global.tut_harden_switch = false;
tut_running_space = false;
tut_running_dash = false;
tut_running_harden = false;
tut_over_space = false;
tut_over_harden = false;
tut_over_dash = false;


// freeze setup

skill_pause = false;
skill_cooldown = false;
skill_pause_counter = 0;
skill_pause_snd = [snd_skill_pause, snd_skill_pause_1, snd_skill_pause_2];

// harden setup

skill_harden_duration = global.beat_max / 2;
skill_harden_cooldown = global.beat_max / 2 + global.beat_max / 8;
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

if(room != rm_start){
heart_1 = instance_create_layer(64, 64, "Inst_upper", obj_heart);
heart_2 = instance_create_layer(128, 64, "Inst_upper", obj_heart);
heart_3 = instance_create_layer(192, 64, "Inst_upper", obj_heart);
heart_4 = instance_create_layer(256, 64, "Inst_upper", obj_heart);
heart_5 = instance_create_layer(320, 64, "Inst_upper", obj_heart);
heart_6 = instance_create_layer(384, 64, "Inst_upper", obj_heart);
}

if(room != rm_start){
mana_bar = instance_create_layer(1920/2, 1080 - 128 , "Inst_upper", obj_mana_bar);
mana_bar.image_index = mana;
}

// setup gamepads

gamepads = [];
for(var i = 0; i < gamepad_get_device_count(); i ++){
	if(gamepad_is_connected(i)) array_push(gamepads, i);
}