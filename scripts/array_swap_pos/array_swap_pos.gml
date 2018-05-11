/// @desc array_swap_pos(array, pos1, pos2)
/// @arg array
/// @arg pos1
/// @arg pos2

//a = [123,456,789];
//array_swap_pos(a,0,2);
//show_debug_message(a); // { { 789,456,123 },  }

var a = argument0;
var v = a[@ argument1];
a[@ argument1] = a[@ argument2];
a[@ argument2] = v;



