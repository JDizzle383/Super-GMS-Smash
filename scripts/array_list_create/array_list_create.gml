/// @desc array_list_create(v1,v2...)
/// @arg v1
/// @arg v2...

// 创建数组列表，或者往数组列中插入值
// Create an array list
//var a = array_list_create(123,233,"deciia"); 
//var a = [3,123,233,"deciia"]; // the first argument is the counts of the rest.
//show_debug_message(a); // { { 3,123,233,deciia },  }

// 销毁列表
// destroy the array list
///a = [];

// 清除列表
// clear the array list
//a = [];
//a[0] = 0;

// 获取数组列表的长度
// get the size of the array list
//len = a[0];

var a = [];
a[0] = argument_count;
for (var i=0;i<argument_count;i++){
    a[1+i] = argument[i];
}
return a;