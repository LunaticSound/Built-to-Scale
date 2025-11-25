/// @description Insert description here
// You can write your code in this editor

window_set_fullscreen(true);
next = false;


gamepads = [];
for(var i = 0; i < gamepad_get_device_count(); i ++){
	if(gamepad_is_connected(i)) array_push(gamepads, i);
}