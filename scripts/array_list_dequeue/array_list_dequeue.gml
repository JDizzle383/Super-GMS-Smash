/// @desc array_list_dequeue(array [,default])
/// @arg array

// Dequeues the value from the head of the array list
//a = [4,1,233,4344,"111aa"];
//b = array_list_dequeue(a); 
//show_debug_message(b); // 1
//show_debug_message(a); // { { 3,233,4344,111aa,undefined },  }

var a = argument[0];
var d = undefined;
if (argument_count > 1) d = argument[1];

var n = a[0];
if (n > 0) {
	var v = a[@ 1]; // first value
	array_list_delete(a,0);
	return v;
} else return d;

