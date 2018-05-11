/// @desc array_list_tail(array)
/// @arg array

// Reads the value from the tail of the array list
//a = [4,1,233,4344,"111aa"];
//b = array_list_tail(a); 
//show_debug_message(b); // 111aa

var a = argument[0];
var n = a[0];
if (n > 0) return a[@ n];
return undefined;
