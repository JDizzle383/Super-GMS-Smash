/// @desc array_def_list_get(data,xpos,vpos,index, default)
/// @arg data
/// @arg xpos
/// @arg vpos
/// @arg index
/// @arg default

//move_data = [];
//move = 2;
//prop = 2;
//array_def_list(move_data,move,prop,12,10,11);
//val =  array_def_list_get(move_data, move, prop, 1, noone);
//show_debug_message(val); // 10

var _d,_v;
_d = argument[0];
_v = argument[4];
if !is_array(_d) return _v; 
var _a = _d[@ argument[1]]; 
if  is_array(_a) 
return  _a[@ argument[2]+argument[3]];
else return _v; 
