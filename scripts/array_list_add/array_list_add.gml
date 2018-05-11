/// @desc array_list_add(arr,v1,v2,...)
/// @arg arr
/// @arg v1
/// @arg v2...

// 往数组列表中添加值
// add values to array list
//var a = array_list_create(123,233,"deciia");
//array_list_add(a,102983,33333); 
//show_debug_message(a); { { 5,123,233,deciia,102983,33333 },  }

var a = argument[0], n = a[0];
a[@ 0] = n + argument_count - 1;
var i = argument_count;
while (--i > 0) a[@ n + i] = argument[i];
return a;