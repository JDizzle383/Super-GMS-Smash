/// @desc array_prilist_add(array,val,pri)
/// @arg array
/// @arg val
/// @arg pri

//var pri = array_prilist_create();
//array_prilist_add(pri,123,100);
//array_prilist_add(pri,1234,200);
//array_prilist_add(pri,12345,300);
//show_debug_message(pri);

var a = argument0;
var n = a[@ 0], v = a[@ 1], p = a[@ 2];
array_list_add(v, argument1);
array_list_add(p, argument2);
a[@ 0] ++;
array_prilist_sort(p, v);

