/// @desc array_2d_def_list_get(data,xpos,ypos, vpos,index, default)
/// @arg data
/// @arg xpos
/// @arg ypos
/// @arg vpos
/// @arg index
/// @arg default

//move_data = [];
//move = 2;
//action = 2;
//prop = 2;
//array_2d_def_list(move_data,move,action,prop,12,10,11);
//val =  array_2d_def_list_get(move_data, move, action, prop, 1, noone);
//show_debug_message(val); // 10

var _d,_v;
_d = argument[0];
_v = argument[5];
if !is_array(_d) return _v; 

var _a = _d[@ argument[1],argument[2]]; 
if is_array(_a)
{
    var _i = argument[3]+argument[4];
	if (_i > (array_length_1d(_a) - 1))
        return _v; 
    return  _a[@ _i];
    
} else return _v;
