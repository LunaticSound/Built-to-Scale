/// @description Insert description here
// You can write your code in this editor

x = lerp(x, goal_x, 0.01);
y = lerp(y, goal_y, 0.01);

rand-= 1;
if(image_alpha > 0.01) image_alpha -= 0.01;
image_xscale += 0.015;
image_yscale += 0.015;

if(rand <= 0) instance_destroy();