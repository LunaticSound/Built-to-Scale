/// @description Insert description here
// You can write your code in this editor

if(button_create){
	if(array_length(fishes) < 40){
	var index_x = irandom(array_length(free_positions_x)-1);
	var rand_x = free_positions_x[index_x];
	array_delete(free_positions_x, index_x, 1);
	fishes[array_length(fishes)] = instance_create_layer(x , y , "Inst_lower", obj_notefish);
with(fishes[array_length(fishes) - 1]){
	temple = other;
	base_x = other.x - 700;
	base_y = other.y + 380;
	x_step_size = other.x_step_size;
	y_step_size = other.y_step_size;
	grid_pos_x = rand_x[0];
	grid_pos_y = rand_x[1];
	x = base_x + grid_pos_x * x_step_size;
	anchorY = base_y - grid_pos_y * y_step_size;
	frequency = 0.1;
	amplitude = 10;
	timer = 0;
		}
	}
	button_create = false;
}

if(button_destroy){
	if(array_length(fishes) > 0){
		var fish = irandom(array_length(fishes) - 1);
		with(fishes[fish]){ instance_destroy();}
		array_delete(fishes, fish, 1);
	}
	button_destroy = false;
}

if(global.beat_count%eights == 0){
	eight_count +=1;
	var ii = array_length(fishes);
	for (var i = 0; i < ii; i += 1){
	fishes[i].played = false;
	}
	if(eight_count > 8) eight_count = 0;
}