/// @desc array_def(data, xpos, ypos, vpos, var0[, var1,,,])
/// @arg data
/// @arg xpos
/// @arg ypos
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
//move_data = [];//array_2d_create(2,2,noone);
//move = 2;
//action = 2;
//prop = 2;
//array_def(move_data,move,action,prop,12,10,11);

//var v,v0,v1,v2;
//v1 = move_data[@ move,action];
//v2 = v1[@ prop]; 
//show_debug_message(v2); // 12
//v1 = move_data[@ move,action+1];
//v2 = v1[@ prop];
//show_debug_message(v2); // 10
//v1 = move_data[@ move,action+2];
//v2 = v1[@ prop];
//show_debug_message(v2); // 11

var d = argument[0]; // data
var r = argument[1]; // xpos
var h = argument[2]  // ypos
var p = argument[3]; // vpos   
var i = argument_count;   

while (--i >= 4) {
    var a = d[@ r,h+i-4];        
    if !is_array(a) {
        var j = p + 1;
        while(--j>=0) {
            a[j] = noone;
        }
    }    
    a[@ p] = argument[i];
    d[@ r,h+i-4] = a; 
}
   
return d; 