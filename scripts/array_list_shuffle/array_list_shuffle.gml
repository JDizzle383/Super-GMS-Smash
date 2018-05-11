/// @desc array_list_shuffle(arr)
/// @arg arr

// shuffle a list, which will re-order all the component values into random positions

//var a = [5,123,233,"deciia",23,2];
//array_list_shuffle(a);
//show_debug_message(a); // { { 5,23,2,123,233,deciia },  }

var a = argument0;
var n = a[0], t, i;

while (n) { // If there are elements...

	// Select an element at random.
	i = floor(random(1) * ( -- n)); 
	if (i < 1) i = 1;
	
	// Exchange with current element
	t = a[@ (n+1)];   //  when use a[n], total memory will inscrease every time.
	a[@ (n+1)] = a[@ i];
	a[@ i] = t;
}

return a;