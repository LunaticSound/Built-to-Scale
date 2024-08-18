/// @description Insert description here
// You can write your code in this editor

if(other.skill_harden_active){
	if(other.face_right){
		if(grid_pos_x < 8){
			grid_pos_x += 1;
			x = base_x + grid_pos_x * x_step_size;
		}
	}

	if(!other.face_right){
		if(grid_pos_x > 1){
			grid_pos_x -= 1;
			x = base_x + grid_pos_x * x_step_size;
		}
	}
}