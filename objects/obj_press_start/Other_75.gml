/// @description Insert description here
// You can write your code in this editor


if (async_load[? "event_type"] == "gamepad discovered")
{
    var _pad = async_load[? "pad_index"];
//	show_message("Gamepad " + string(_pad) + " discovered!"); // Notify discovery
    array_push(gamepads, _pad);
}

else if (async_load[? "event_type"] == "gamepad lost")
{
    var _pad = async_load[? "pad_index"];
    var _index = array_get_index(gamepads, _pad);
    array_delete(gamepads, _index, 1);
//	show_message("Gamepad " + string(_pad) + " lost!"); // Notify loss
}

