/// @desc array_list_find_index(arr,val[,is_ordered] )
/// @arg arr
/// @arg val
/// @arg [is_ordered]

// 查找一个值在数组列表中的索引位置
// check the value, return the position of the value.
// if the value does not exist, then -1 will be returned

//a = array_list_create(233,12,"deciia",457); 
//v = array_list_find_index(a,"deciia");
//show_debug_message(v); // 2


var a = argument[0], n = a[0], v = argument[1];
var _is_ordered = false;
if (argument_count > 2)
_is_ordered = argument[2];

if (!_is_ordered) {

	for (var i = 0; i < n; i++) {  

		//var v0 = a[1+i];
		//if is_array(v0) && is_array(v) && array_equal(v0,v)
		//return i;
		//else if !is_array(v0) && !is_array(v) &&  (v0 == v)
		//return i;	
	
		if (a[1+i] == v) return i;	
		
	}
 
} else {

	// binary search
	var l,h,m;
	l = 1;
	h = n;
	while(l <= h) {
		m = (l + h) / 2;
		if (a[m] == v)
		return m;
		if (a[m] > v)
		h = m - 1;
		if (a[m] < v)
		l = m + 1;
	}
}

return -1;