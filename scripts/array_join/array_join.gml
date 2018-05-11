/// @desc array_join( arr1, arr2)
/// @arg arr1
/// @arg arr2

// join two arrays

//var a = [12,23,"deciia"];
//array_join(a,[34,56,"adam"]);
//show_debug_message(a); // { { 12,23,deciia,34,56,adam },  }


var a1,a2,s1,s2;
a1 = argument0;
a2 = argument1;
s1 = array_length_1d(a1);
s2 = array_length_1d(a2);

for(var i = 0; i < s2; i ++){
    a1[@ (s1+i)] = a2[i];
}
return a1;