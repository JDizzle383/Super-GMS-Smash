/// @desc array_set_value(array,pos,value)
/// @arg array
/// @arg pos
/// @arg value

// set the value of indicated index

//a = [];
//array_set(a,2,100);
//a = 0;
//a = array_set(a,2,100);


if is_array(argument0) {
    argument0[@ argument1] = argument2;
} else {
    var _a;
    _a[argument1] = argument2;
    return _a; 
} 

