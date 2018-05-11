/// @desc array_def_list(data,xpos,vpos,var0[,var1,,,])
/// @arg data
/// @arg xpos
/// @arg vpos
/// @arg var0
/// @arg [val1...]

//(0)
//.--------------------n---------------> xpos
//.(xpos,vpos+0)-------.-------->
//                     (xpos,vpos+n) array_1d_def_list

//move_data = [];
//move = 2;
//prop = 2;
//array_def_list(move_data,move,prop,12,10,11);
//show_debug_message(move_data); // { { 0,0,{ { 0,0,12,10,11 },  } },  }
//var v,v0,v1,v2;
//v = move_data[@ move];
//v0 = v[@ prop]; 
//show_debug_message(v0); // 12
//v1 = v[@ prop+1]; 
//show_debug_message(v1); // 10
//v2 = v[@ prop+2]; 
//show_debug_message(v2); // 11

var _d = argument[0];
if !is_array(_d) exit; //not array

var _x = argument[1];    
var _v = argument[2];    
var _i = argument_count;
var _l = array_length_1d(_d);

var _a;
if (_l <= _x) {
	_a = [];
} else _a = _d[@ _x];
while (--_i >= 3) _a[@ _v + _i-3] = argument[_i];    
_d[@ _x] = _a;        
return _d;

