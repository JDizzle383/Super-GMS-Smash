/// @desc array_prilist_changepri(array,val,new_pri)
/// @arg array
/// @arg val
/// @arg new_pri

// Changes the priority of the given value in the priority array list.

//var pri = array_prilist_create();
//array_prilist_add(pri,1,200);
//array_prilist_add(pri,2,100);
//array_prilist_add(pri,3,300);
//array_prilist_add(pri,4,500);
//show_debug_message(pri); // { { 4,{ { 4,2,1,3,4 },  },{ { 4,100,200,300,500 },  } },  }

//array_prilist_changepri(pri,2,600)
//show_debug_message(pri); // { { 4,{ { 4,1,3,4,2 },  },{ { 4,200,300,500,600 },  } },  }

var a = argument0;
var n = a[@ 0], v = a[@ 1], p = a[@ 2];
var _val = argument1, _new = argument2;

var i = array_list_find_index(v, _val);
if (i != -1) {
	p[@ i+1] = _new;
	array_prilist_sort(p, v);
}