/// @description Insert description here
// You can write your code in this editor

zeus = instance_create_layer(x + 1300, y, "Inst_upper", obj_zeus);
button_create = false;
button_destroy = false;
played = false;
eights = global.beat_max / 8;
eight_count = 0;
notes_correct = 0;
notes_needed = 4;
correct_notes = [[1,1], [2,3], [5,2], [8,5]];

x_step_size = 128;
y_step_size = 150;

fishes = [];
// free_positions_x = [[1,1], [1,2], [1,3], [1,4], [1,5], [2,1], [2,2], [2,3], [2,4], [2,5], [3,1], [3,2], [3,3], [3,4], [3,5], [4,1], [4,2], [4,3], [4,4], [4,5], [5,1], [5,2], [5,3], [5,4], [5,5], [6,1], [6,2], [6,3], [6,4], [6,5], [7,1], [7,2], [7,3], [7,4], [7,5], [8,1], [8,2], [8,3], [8,4], [8,5]];
free_positions_x = [[1,1], [1,2], [1,3], [1,5], [1,4]];


for (var i = 0; i < 4; i += 1){
    fishes[i] = instance_create_layer(x , y , "Inst_lower", obj_notefish);
with(fishes[i]){
	temple_clear = false;
	temple = other;
	base_x = other.x - 700;
	base_y = other.y + 380;
	x_step_size = other.x_step_size;
	y_step_size = other.y_step_size;
	grid_pos_x = 1;
	grid_pos_y = i + 1;
	if(grid_pos_y = 4) grid_pos_y = 5;
	x = base_x + grid_pos_x * x_step_size;
	anchorY = base_y - grid_pos_y * y_step_size;
	frequency = 0.1;
	amplitude = 10;
	timer = 0;
	correct_notes = other.correct_notes;
	var notes = 0;
	for (var j = 0; j < array_length(correct_notes) - 1; j += 1){
		if(grid_pos_x == correct_notes[j][0] && grid_pos_y == correct_notes[j][1]) notes += 1;	
	}
	if(notes == 1){ 
		temple.notes_correct += 1
	} else {
		temple.notes_correct -= 1;
		}
	}
}