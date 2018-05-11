/// @desc array_nested_get(array, pos1, pos2,default)
/// @arg array
/// @arg pos1
/// @arg pos2
/// @arg default

//a = [];
//v = array_nested_get(a,2,2,noone);
//show_debug_message(v); // -4

//a = [1,2,[3,4,5],6,[7,8]];
//v = array_nested_get(a,1,2,noone);
//show_debug_message(v); // -4
//v = array_nested_get(a,2,2,noone);
//show_debug_message(v); // 5

var a0 = argument0;
if !is_array(a0) return argument3;

if (argument1 > array_length_1d(a) - 1)
return argument3;

var a1 = a0[@ argument1];
if !is_array(a1) return argument3;

return a1[@ argument2];


