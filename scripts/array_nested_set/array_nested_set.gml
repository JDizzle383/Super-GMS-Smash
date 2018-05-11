/// @desc array_nested_set(array, pos1, pos2, value)
/// @arg array
/// @arg pos1
/// @arg pos2
/// @arg value

//a = [];
//array_nested_set(a,2,2,100);
//show_debug_message(a); // { { 0,0,{ { 0,0,100 },  } },  }

var a0 = argument0, a1, p1 = argument1, p2 = argument2;
if (p1 > array_length_1d(a0) - 1) {
	a1 = [];
	a1[@ p2] = argument3;
	a0[@ p1] = a1;
} else {
	a1 = a0[@ p1];
	if is_array(a1) a1[@ p2] = argument3;
	else {
		a1 = [];
		a1[@ p2] = argument3;
		a0[@ p1] = a1;
	}
}





