/// @desc array_2d_def_list(data,xpos,ypos,vpos,var0[,var1,,,])
/// @arg data
/// @arg xpos
/// @arg ypos
/// @arg vpos
/// @arg var0
/// @arg [val1...]

//(0,0)
//.-------------------------n---------------> xpos
//|   .(xpos,ypos,vpos+0)---.-------->
//|   |                   (xpos,ypos,vpos+n) array_2d_def_list
//|   |
//|   |
//|   |
//n   .(xpos,ypos+n,vpos) array_def
//|   |
//|   V 
//V
//ypos

//2d array def
//move_data = [];
//move = 2;
//action = 2;
//prop = 2;
//array_2d_def_list(move_data,move,action,prop,12,10,11);

//var v,v0,v1,v2;
//v = move_data[@ move,action];
//v0 = v[@ prop]; 
//show_debug_message(v0); // 12
//v1 = v[@ prop+1]; 
//show_debug_message(v1); // 10
//v2 = v[@ prop+2]; 
//show_debug_message(v2); // 11


var _d = argument[0];
if !is_array(_d) exit; //not array

var _x = argument[1];
var _y = argument[2];
var _v = argument[3];    
var _i = argument_count;
var _a = _d[@ _x,_y];
    
if !is_array(_a) _a[_v + _i-5] = noone;
while (--_i >= 4) {
    _a[@ _v + _i-4] = argument[_i];
}
_d[@ _x,_y] = _a;        
return _d;