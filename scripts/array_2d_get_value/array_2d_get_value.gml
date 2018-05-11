/// @desc array_2d_get_value(array, x, pos, default)
/// @arg array
/// @arg x
/// @arg pos
/// @arg default

var _a = argument0;
if (argument2 > array_length_2d(_a,argument1)-1) 
return argument3;
else return _a[@ argument1,argument2];