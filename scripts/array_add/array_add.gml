/// @desc array_add(array,value,...)
/// @arg array
/// @arg value..



//// 数组添加新的值
//// add a new value to array
//a = array(12,23,"deciia"); 
//array_add(a, 34);
//show_debug_message(a); // { { 12,23,deciia,34},}

//// 实数添加值生成数组
//// add a new value to real number
//a = 0;
//a = array_add(a,12,23,"deciia");
//show_debug_message(a);  //{ { 12,23,"deciia" },}


var a = argument[0],n = array_length_1d(a) - 1;
var i = argument_count;
if (is_array(a)) while (--i > 0) a[@ n + i] = argument[i];
else while (--i > 0) a[n + i] = argument[i];
return a;





