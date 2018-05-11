/// @desc array_def_get(data, xpos, ypos, vpos, num)
/// @arg data
/// @arg xpos
/// @arg ypos
/// @arg vpos
/// @arg num

//move_data = [];
//move = 2;
//action = 2;
//prop = 2;
//array_def(move_data,move,action,prop,12,10,11);
//val =  array_def_get(move_data, move, action, prop, 1);
//show_debug_message(val); // 10

var _d = argument[0];
if !is_array(_d) return noone; //not array

var _x = argument[1];
var _y = argument[2];
var _v = argument[3];
var _n = argument[4];

var _a1 = _d[@ _x,_y+_n];
if is_array(_a1) return _a1[@ _v];
else return noone;


//var _a2;
//while (--_n >= 0) 
//{
//    var _a1 = _d[@ _x,_y+_n];    
//    if is_array(_a1) 
//        _a2[_n] = _a1[_v]
//    else _a2[_n] = noone;
//}
//if argument[4] = 1 return _a2[0];    
//return _a2;