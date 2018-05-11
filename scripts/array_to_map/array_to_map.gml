/// @desc array_to_map(array [,depth])
/// @arg array
/// @arg [depth]

var _array=0,_height=0,_size=0,_map=-1,_depth = 0;
_array = argument[0];

if (argument_count > 1)
_depth = argument[1];

if !is_array(_array) 
_array[0] = _array;

_height = array_height_2d(_array);

var a = -1;
_map = ds_map_create();

if (_height > 1) 
{    
    _map[? "dimension"] = 2; 
    _map[? "height"] = _height;
    _map[? "depth"]  = _depth;
        
    if (_depth == 0)
    _map[? "forExecute"]  = true;    
    
    for (var i = 0; i < _height; i ++) {
    
        var _size = array_length_2d(_array,i);
        _map[? "length_"+string(i)] = _size;
        
        for (var j = 0; j < _size; j ++) {
        
            a = _array[i,j];
            var _str =  string(i)+"/"+string(j);            
            if (is_array(a)) {                
                a = array_to_map(a,_depth+1);
                ds_map_add_map(_map,_str,a);                      
                continue;            
            }  else if (is_real(a))
            a = "\\"+string(a);            
            ds_map_add(_map,_str,a);               
        }
    }
    
    return _map;

} else is_array(_array) { 

    
    _map[? "dimension"] = 1; 
    _size = array_length_1d(_array);
    _map[? "length"] = _size;
    _map[? "depth"]  = _depth;
    
    if (_depth == 0)
    _map[? "forExecute"]  = true; 

    for (var i=0; i<_size; i++) {   
        
        a = _array[i];    
        if (is_array(a)) {
            a = array_to_map(a,_depth+1);
            ds_map_add_map(_map,string(i),a);                   
            continue;    
        } else if (is_real(a))
        a = "\\"+string(a);
        ds_map_add(_map,string(i),a);
        
    }    
    
    return _map;
}





