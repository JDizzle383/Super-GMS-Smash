/// @desc array_list_delete(arr,pos)
/// @arg arr
/// @arg pos

// 删除数组列表的一个值
// remove a value from the array list
//var a = array_list_create(12,233,"deciia",457,685,8920); 
//array_list_delete(a,2); 
//show_debug_message(a);  // { { 5,12,233,457,685,8920,undefined },  }

var a = argument0;
var p = argument1;
var n = a[0];
var r = undefined;

if (p = n - 1)  {	
	r = a[(p+1)];
	a[@ (p+1)] = undefined;
	a[@ 0] = n - 1;
} else if (p >= 0 && p < n-1) {
	var b = a;
	b[0] = a[0]; // get a copy of a
	r = a[(p+1)];
	array_copy(a, p+1, b, p+2, n - p - 1);
	a[@ n] = undefined;
	a[@ 0] = n - 1;
}

return r; // return the deleted value

