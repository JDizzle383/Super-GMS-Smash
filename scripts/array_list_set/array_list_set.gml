/// @desc array_list_set(arr,pos,val[,defaultVal])
/// @arg arr
/// @arg pos
/// @arg val
/// @arg [defaultVal]

// 设置数组列表的一项的值，如果索引超出，则中间的部分则补上defaultVal对应的值。
// set a previously added list entry. 
// if the entry being set is outside the bounds of the list
// then the list will be filled to the given position and each entry will be set to defaultVal.
//var a = array_list_create(12,233,"deciia",457); 
//array_list_set(a,2,1234); 
//show_debug_message(a);   // { { 4,12,233,1234,457 },  }
//array_list_set(a,5,1234,0);
//show_debug_message(a);  // { { 6,12,233,1234,457,0,1234 },  }

var a = argument[0], n = a[0];
var p = argument[1], v = argument[2];

var d = undefined;
if (argument_count > 3) d = argument[3];

if (p > n - 1) {
	a[@ 0] = p + 1;
	a[@ (p+1)] = v;
	var i = p - n;
	while (--i >= 0) a[@ n + 1 + i] = d;
} else if (p >= 0) a[@ (p+1)] = v;

return a;