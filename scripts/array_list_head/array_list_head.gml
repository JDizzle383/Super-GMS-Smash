/// @desc array_list_head(array)
/// @arg array

// Reads the value from the head  of the array list.
//a = [4,1,233,4344,"111aa"];
//b = array_list_head(a); 
//show_debug_message(b); // 1

var a = argument[0];
var n = a[0];
if (n > 0) return a[@ 1];
return undefined;
