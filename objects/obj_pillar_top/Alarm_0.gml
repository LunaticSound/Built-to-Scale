/// @description Insert description here
// You can write your code in this editor

if(shake_count<30){
	shake_count += 1;
	x = def_x + irandom_range(-2, 2);
	alarm[0] = 1;
}

else { 
//	shake_count>=30)
	shake_count = 0;
	x = def_x;
}