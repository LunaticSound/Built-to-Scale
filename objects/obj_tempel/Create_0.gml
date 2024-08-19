/// @description Insert description here
// You can write your code in this editor

button_create = false;
button_destroy = false;
played = false;
eights = global.beat_max / 8;
eight_count = 0;
notes_correct = 0;
notes_needed = 1;
// correct_notes = [[2,1], [3,3], [4,5], [7,2]];
correct_notes = [[2,1]];

button_1 = instance_create_layer(x - 1200, y + 480, "Inst_lowest", obj_temple_button_1);
with(button_1){
	temple = other;
};
button_2 = instance_create_layer(x - 850, y + 480, "Inst_lowest", obj_temple_button_2);
with(button_2){
	temple = other;
};

x_step_size = 128;
y_step_size = 150;

fishes = [];
free_positions_x = [[1,1], [1,2], [1,3], [1,4], [1,5], [2,1], [2,2], [2,3], [2,4], [2,5], [3,1], [3,2], [3,3], [3,4], [3,5], [4,1], [4,2], [4,3], [4,4], [4,5], [5,1], [5,2], [5,3], [5,4], [5,5], [6,1], [6,2], [6,3], [6,4], [6,5], [7,1], [7,2], [7,3], [7,4], [7,5], [8,1], [8,2], [8,3], [8,4], [8,5]];

for (var i = 0; i < 1; i += 1){
	var index_x = irandom(array_length(free_positions_x)-1);
	var rand_x = free_positions_x[index_x];
	array_delete(free_positions_x, index_x, 1);

    fishes[i] = instance_create_layer(x , y , "Inst_lower", obj_notefish);
with(fishes[i]){
	temple_clear = false;
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