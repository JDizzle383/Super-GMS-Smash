/// @desc array_random_get(array)
/// @arg array

var a = argument0;
var n = array_length_1d(a);
if (n > 0)
return a[irandom(array_length_1d(a)-1)];
return undefined;
