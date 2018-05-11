/// @desc array_shuffle(array)
/// @arg array

var a = argument0;
var m = array_length_1d(a), t, i;

while (m) { // If there are elements...
	i = floor(random(1) * ( -- m)); // Select an element at random.
	// Exchange with current element
	t = a[@ m];   //  when use a[m], total memory will inscrease every time.
	a[@ m] = a[@ i];
	a[@ i] = t;
}

return a;

