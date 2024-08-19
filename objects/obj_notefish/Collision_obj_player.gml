/// @description Insert description here
// You can write your code in this editor


if(other.skill_harden_active){
    var was_correct = false;
    for (var i = 0; i < array_length(correct_notes); i += 1) {
        if(grid_pos_x == correct_notes[i][0] && grid_pos_y == correct_notes[i][1]) {
            was_correct = true;
            break;
        }
    }

    if(abs(x - other.x) > abs(y - other.y)){
        if(other.face_right){ 
            if(grid_pos_x < 8){
                if(!position_meeting(base_x + (grid_pos_x + 1) * x_step_size, y, obj_notefish)){
                    grid_pos_x += 1;
                    x = base_x + grid_pos_x * x_step_size;
                }
            }
        } else {
            if(grid_pos_x > 1){
                if(!position_meeting(base_x + (grid_pos_x - 1) * x_step_size, y, obj_notefish)){ 
                    grid_pos_x -= 1;
                    x = base_x + grid_pos_x * x_step_size;
                }
            }
        }
    } else {
        if(y > other.y){
            if(grid_pos_y > 1){
                if(!position_meeting(x, base_y - (grid_pos_y - 1) * y_step_size, obj_notefish)){
                    grid_pos_y -= 1;
                    anchorY = base_y - grid_pos_y * y_step_size;
                }
            }
        } else {
            if(y < other.y){
                if(grid_pos_y < 5){
                    if(!position_meeting(x, base_y - (grid_pos_y + 1) * y_step_size, obj_notefish)){ 
                        grid_pos_y += 1;
                        anchorY = base_y - grid_pos_y * y_step_size;
                    }
                }
            }
        }
    }

    var is_correct = false;
    for (var i = 0; i < array_length(correct_notes); i += 1) {
        if(grid_pos_x == correct_notes[i][0] && grid_pos_y == correct_notes[i][1]) {
            is_correct = true;
            break;
        }
    }

    if(was_correct && !is_correct) {
        temple.notes_correct -= 2;
    } else if(!was_correct && is_correct) {
        temple.notes_correct += 2;
    }
}

/*
if(other.skill_harden_active){
	if(abs(x - other.x) > abs(y - other.y)){
		if(other.face_right){ 
			if(grid_pos_x < 8){
				if(!position_meeting(base_x + (grid_pos_x + 1) * x_step_size, y, obj_notefish)){
					grid_pos_x += 1;
					x = base_x + grid_pos_x * x_step_size;
					var notes_correct = 0;
					for (var i = 0; i < array_length(correct_notes) - 1; i += 1){
						if(grid_pos_x == correct_notes[i][0] && grid_pos_y = correct_notes[i][1]) notes_correct += 1;	
					}
					if(notes_correct == 1) temple.notes_correct += 1
					else temple.notes_correct -= 1;
				}
			}
		}

	if(!other.face_right){
		if(grid_pos_x > 1){
			if(!position_meeting(base_x + (grid_pos_x - 1) * x_step_size, y, obj_notefish)){ 
				grid_pos_x -= 1;
				x = base_x + grid_pos_x * x_step_size;
				var notes_correct = 0;
				for (var i = 0; i < array_length(correct_notes) - 1; i += 1){
				if(grid_pos_x == correct_notes[i][0] && grid_pos_y = correct_notes[i][1]) notes_correct += 1;	
				}
				if(notes_correct == 1) temple.notes_correct += 1
				else temple.notes_correct -= 1;
			}
		}
	}
}
	else{
		if(y > other.y){
			if(grid_pos_y > 1){
			if(!position_meeting(x, base_y - (grid_pos_y - 1) * y_step_size, obj_notefish)){
				grid_pos_y -= 1;
				anchorY = base_y - grid_pos_y * y_step_size;
				var notes_correct = 0;
				for (var i = 0; i < array_length(correct_notes) - 1; i += 1){
				if(grid_pos_x == correct_notes[i][0] && grid_pos_y = correct_notes[i][1]) notes_correct += 1;	
				}
				if(notes_correct == 1) temple.notes_correct += 1
				else temple.notes_correct -= 1;
			}
		}
		if(y < other.y){
			if(grid_pos_y < 5){
				if(!position_meeting(x, base_y - (grid_pos_y + 1) * y_step_size, obj_notefish)){ 
					grid_pos_y += 1;
					anchorY = base_y - grid_pos_y * y_step_size;
					var notes_correct = 0;
					for (var i = 0; i < array_length(correct_notes) - 1; i += 1){
						if(grid_pos_x == correct_notes[i][0] && grid_pos_y = correct_notes[i][1]) notes_correct += 1;	
					}
					if(notes_correct == 1) temple.notes_correct += 1
					else temple.notes_correct -= 1;
				}
			}
		}
	}
}
}