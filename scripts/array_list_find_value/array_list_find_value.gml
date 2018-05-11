/// @desc array_list_find_value(arr, pos)
/// @arg arr
/// @arg pos

// 返回数组列表指定索引位置的值
// check the given array list position and return the held value
// if the position is outside of list size, the script will return <undefined>

//var a = array_list_create(12,233,"deciia",457); 
//var b = array_list_find_value(a,2); 
//show_debug_message(b); // deciia
//var b = array_list_find_value(a,4); 
//show_debug_message(b); // undefined

var a = argument0, n = a[0];
var p = argument1;

if (p >= 0 && p < n) {
	return a[(p+1)];	
}

return undefined;