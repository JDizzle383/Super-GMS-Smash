/// @desc array_prilist_delmax(array)
/// @arg array

// Returns the value in the priority array list with the largest priority.

//var pri = array_prilist_create();
//array_prilist_add(pri,1,200);
//array_prilist_add(pri,2,100);
//array_prilist_add(pri,3,300);
//array_prilist_add(pri,4,500);
//show_debug_message(pri); // { { 4,{ { 4,2,1,3,4 },  },{ { 4,100,200,300,500 },  } },  }

//var m = array_prilist_delmax(pri);
//show_debug_message(m); // 4
//show_debug_message(pri); // { { 3,{ { 3,2,1,3,undefined },  },{ { 3,100,200,300,undefined },  } },  }

var a = argument0;
var n = a[@ 0], v = a[@ 1], p = a[@ 2];

if (n >= 1) {
	var _val = v[@ n];
	array_list_delete(v, n - 1);
	array_list_delete(p, n - 1);	
	a[@ 0] --;
	return _val;
}

return undefined;