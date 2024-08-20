/// @description Insert description here
// You can write your code in this editor

if(!pressed){
image_index = 1;
steamer.buttons_pressed += 1;
pressed = true;	
other.x -= 5;
}

if(pressed && !played){ 
	audio_play_sound(snd_skill, 1, false);
	played = true;
}