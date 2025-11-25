/// @description Insert description here
// You can write your code in this editor
/*
if(button_create && notes_correct != notes_needed){
	if(array_length(fishes) < 5 && array_length(free_positions_x) > 0){
	var index_x = irandom(array_length(free_positions_x)-1);
	var rand_x = free_positions_x[index_x];
	array_delete(free_positions_x, index_x, 1);
	fishes[array_length(fishes)] = instance_create_layer(x , y , "Inst_lower", obj_notefish);
with(fishes[array_length(fishes) - 1]){
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
	button_create = false;
}

if(button_destroy && notes_correct != notes_needed){
	if(array_length(fishes) > 0){
		var fish = irandom(array_length(fishes) - 1);
		with(fishes[fish]){ 
			instance_destroy();
			var note = 0;
	for (var k = 0; k < array_length(correct_notes) - 1; k += 1){
		if(grid_pos_x == correct_notes[k][0] && grid_pos_y == correct_notes[k][1]) note += 1;	
	}
	if(note == 1){ 
		temple.notes_correct -= 1
	} else {
		temple.notes_correct += 1;
		}
			}
		array_delete(fishes, fish, 1);
	}
	button_destroy = false;
}
*/

if(button_create && notes_correct != notes_needed){
    // Ensure no more than 5 fish are created and positions are available
    if(array_length(fishes) < 5 && array_length(free_positions_x) > 0){
        var index_x = array_length(free_positions_x) - 1;
        var rand_x = free_positions_x[index_x];
        
        // Ensure that the fish is created before the position is removed from the array
        fishes[array_length(fishes)] = instance_create_layer(x , y , "Inst_lower", obj_notefish);
        with(fishes[array_length(fishes) - 1]){
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
                temple.notes_correct += 1;
            } else {
                temple.notes_correct -= 1;
            }
        }
        
        // Remove the assigned position from the array after the fish is created
        array_delete(free_positions_x, index_x, 1);
    }
    button_create = false;
}

if(button_destroy && notes_correct != notes_needed){
    if(array_length(fishes) > 0){
        var fish = array_length(fishes) - 1;
        with(fishes[fish]){ 
            instance_destroy();
            var note = 0;
            for (var k = 0; k < array_length(correct_notes) - 1; k += 1){
                if(grid_pos_x == correct_notes[k][0] && grid_pos_y == correct_notes[k][1]) note += 1;    
            }
            if(note == 1){ 
                temple.notes_correct -= 1;
            } else {
                temple.notes_correct += 1;
            }
        }
        array_delete(fishes, fish, 1);
    }
    button_destroy = false;
}

if(global.beat_count%eights == 0){
	eight_count +=1;
	if(notes_correct != notes_needed){
	var ii = array_length(fishes);
	for (var i = 0; i < ii; i += 1){
	fishes[i].played = false;
	}}
	if(eight_count == 9) eight_count = 1;
}

if(notes_correct == notes_needed){
	if(!audio_is_playing(snd_steam_down)) audio_play_sound(snd_steam_down, 1, false)
	for (var i = 0; i < array_length(fishes); i += 1){
		with(fishes[i]) temple_clear = true;;	
		}
	zeus.y += 4;
	zeus.x += irandom_range(-1, 1);
	y += 4;
	x += irandom_range(-1, 1);
	if(y > 2800){
		with(zeus) instance_destroy();
		instance_destroy();
	}
}