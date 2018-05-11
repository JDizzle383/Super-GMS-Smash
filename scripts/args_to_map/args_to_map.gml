/// @desc args_to_map(array [,depth])
/// @arg array
/// @arg [depth]

// 数组转化为map数据
// Convert array arguments to map data


var _array=0,_height=0,_size=0,_map=-1,_depth = 0;
_array = argument[0];

if (argument_count > 1)
_depth = argument[1];

if !is_array(_array) 
_array[0] = _array;

_height = array_height_2d(_array);

var a = -1;
_map = ds_map_create();

if (_height > 1) // array 2d
{    
    _map[? "dimension"] = 2; //dimensional
    _map[? "height"] = _height;
    _map[? "depth"]  = _depth;
        
    if (_depth == 0) // marked on the depth = 0
    _map[? "forExecute"]  = true;    
    
    for (var i = 0; i < _height; i ++) {
    
        var _size = array_length_2d(_array,i);
        _map[? "length_"+string(i)] = _size;
        
        for (var j = 0; j < _size; j ++) {
        
            a = _array[i,j];
            var _str = string(i)+"/"+string(j);           
            if (is_array(a)) {                
                a = args_to_map(a,_depth+1);
                ds_map_add_map(_map,_str,a);                      
                continue;            
            }  else if (is_real(a)) // real number: num -> \num
            a = "\\"+string(a);            
            ds_map_add(_map,_str,a);               
        }
    }
    
    return _map;

} else is_array(_array) { // array 1d

    
    _map[? "dimension"] = 1; // dimensional
    _size = array_length_1d(_array);
    _map[? "length"] = _size;
    _map[? "depth"]  = _depth;
    
    if (_depth == 0) // marked on the depth = 0
    _map[? "forExecute"]  = true; 

    for (var i=0; i<_size; i++) {   
        
        a = _array[i];    
        if (is_array(a)) {
            a = args_to_map(a,_depth+1);
            ds_map_add_map(_map,string(i),a);                   
            continue;    
        } else if (is_real(a)) {            
            if (i = 0 && a >=0 && script_exists(a)) // the first argument
            a = script_get_name(a); // get the script name
            else a = "\\"+string(a);
        }
        
        ds_map_add(_map,string(i),a);
        
    }    
    
    return _map;
}





