/// @description Insert description here
// You can write your code in this editor

if(other.skill_harden_active){
	if(other.face_right) other.x -= 10;
	if(!other.face_right) other.x += 10;
	image_index += 1;
	if(image_index == image_number - 1){
		audio_play_sound(snd_skill, 1, false);
		instance_destroy();
	}
}