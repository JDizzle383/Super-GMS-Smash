/// @desc array_list_pop(array [,default])
/// @arg array
/// @arg [default]

// Pops the value from the top of the array list.
//a = [4,1,233,4344,"111aa"];
//b = array_list_pop(a); 
//show_debug_message(b); // 111aa
//show_debug_message(a); // { { 4,1,233,4344,undefined },  }

var a = argument[0];
var d = undefined;
if (argument_count > 1) d = argument[1];
var n = a[0];
if (n > 0) {
	var v = a[@ n];
	array_list_delete(a,n-1);
	return v;
} else return d;

