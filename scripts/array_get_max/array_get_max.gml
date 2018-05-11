/// @desc array_get_max(array)
/// @arg array

// return the maximum value of the array
//a = [1,23,888,"deciia",9];
//v = array_get_max(a);
//show_debug_message(v); // 888

var m = 0, l = array_length_1d(argument0);
for( var i = 0; i < l; i++) {
	if (argument0[i] > m)
	m = argument0[i];
}
return m;
