/// @desc array_get_value(array,pos,default)
/// @arg array
/// @arg pos
/// @arg default

var _a = argument0;
if (argument1 > array_length_1d(_a)-1) 
return argument2;
else return _a[@ argument1];

