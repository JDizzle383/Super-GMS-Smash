/// @desc map_to_args(map)
/// @arg map

// 特殊的map数据转化为数组
// Convert a special map data array arguments.

var _map = argument0;
var _dimension = _map[? "dimension"];
var _height = _map[? "height"];
var _length = _map[? "length"];
var _array = -1;

var _size = 0;
if (_dimension == 2) 
for (var i = 0; i < _height; i ++) {

    _size = _map[? "length_"+string(i)];    
    for (var j = 0; j < _size; j ++) {
        var v = noone;
        var _str = string(i)+"/"+string(j);    
        if ds_map_exists(_map,_str) {
            
            v = _map[? _str];
            if (is_string(v)) {
                if (string_char_at(v, 1) == "\\")
                v = real(string_delete(v, 1, 1));
            } else if ds_exists(v,ds_type_map) 
                v = map_to_args(v);
        }
        
        _array[i,j] = v;
    }
} else if (_dimension == 1)
for (var i = 0; i < _length; i += 1) {

    var v = noone;
    if (ds_map_exists(_map,string(i))) {
        v = _map[? string(i)];
        if (is_string(v)) {
            if (i = 0 && asset_get_index(v) != -1 ) 
            v = asset_get_index(v); // get the script index
            else if (string_char_at(v, 1) == "\\")
            v = real(string_delete(v, 1, 1));
        } else if ds_exists(v,ds_type_map) 
            v = map_to_args(v);        
    }
    
    _array[i] = v;    
}

return _array;

