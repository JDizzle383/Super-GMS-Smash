/// @desc array_list_insert(arr,pos,val)
/// @arg arr
/// @arg pos
/// @arg val

//var a = array_list_create(12,233,"deciia",457); 
//array_list_insert(a,1,"iii");
//show_debug_message(a); // { { 5,12,iii,233,deciia,457 },  }
//array_list_insert(a,4,"jjj");
//show_debug_message(a); // { { 6,12,iii,233,deciia,jjj,457 },  }

var a = argument[0], n = a[0];
var p = argument[1], v = argument[2];

if (p >= 0 && p <= n - 1) {
	var b = a;
	b[0] = a[0]; // get a copy of a
	array_copy(a, p+2, b, p+1, n - p);
	a[@ (p+1)] = v;
	a[@ 0] = n + 1;
}

return a;