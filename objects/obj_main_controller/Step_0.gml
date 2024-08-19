/// @description Count Groove
// You can write your code in this editor

global.beat_count += 1;
if(global.beat_count = global.beat_max) global.beat_count = 0;

/*
var buffer = 100; // Extend the activation region slightly beyond the view
var left = view_xview[0] - buffer;
var top = view_yview[0] - buffer;
var right = view_xview[0] + view_wview[0] + buffer;
var bottom = view_yview[0] + view_hview[0] + buffer;

// Deactivate everything outside the extended view
instance_deactivate_region(left, top, right, bottom, false, true);

// Activate everything inside the extended view
instance_activate_region(left, top, right, bottom, true);