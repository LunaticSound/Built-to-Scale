/// @description Insert description here
// You can write your code in this editor

x_step_size = 128;
y_step_size = 168;

fish_1 = instance_create_layer(x , y , "Inst_lower", obj_notefish);
with(fish_1){
	image_blend = c_blue;
	base_x = other.x - 750;
	base_y = other.y + 190;
	x_step_size = other.x_step_size;
	y_step_size = other.y_step_size;
	grid_pos_x = 1;
	grid_pos_y = 1;
	x = base_x + grid_pos_x * x_step_size;
	anchorY = base_y - grid_pos_y * y_step_size;
	frequency = 0.1;
	amplitude = 10;
	timer = 0;
}

fish_2 = instance_create_layer(x - 512, y , "Inst_lower", obj_notefish);
with(fish_2){
	image_blend = c_yellow;
	base_x = other.x - 750;
	base_y = other.y + 190;
	x_step_size = other.x_step_size;
	y_step_size = other.y_step_size;
	grid_pos_x = 4;
	grid_pos_y = 3;
	x = base_x + grid_pos_x * x_step_size;
	anchorY = base_y - grid_pos_y * y_step_size;
	frequency = 0.1;
	amplitude = 10;
	timer = 0;
}

fish_3 = instance_create_layer(x - 512, y , "Inst_lower", obj_notefish);
with(fish_3){
	base_x = other.x - 750;
	base_y = other.y + 190;
	x_step_size = other.x_step_size;
	y_step_size = other.y_step_size;
	grid_pos_x = 7;
	grid_pos_y = 2;
	x = base_x + grid_pos_x * x_step_size;
	anchorY = base_y - grid_pos_y * y_step_size;
	frequency = 0.1;
	amplitude = 10;
	timer = 0;
}
