/// @desc arg0(argument0)
/// @arg arg

////代替 Array(1,22),在参数之间传递数据
/// Change the order of parameter transfer
//a = argr(arg0(1)|arga(22)|arga(25));
//show_debug_message(a); //{ { 1,22,25 },  }

//var i = 0;
//a = argr(arg0(i++,i++)|arga(i++,i++,i++)|arga(i++));
//show_debug_message(a); // { { { { 1,0 },  },{ { 4,3,2 },  },5 },  }

//i = 0;
//a = [i++,i++,i++];
//show_debug_message(a); // { { 2,1,0 },  }

//i = 0;
//a = Array(i++,i++,i++);
//show_debug_message(a); // { { 2,1,0 },  }

//// YYC模式下使用arg0()会报错
//// You cann't use it like this:
//a = argr(arg0(1)|arga(arg0()-1)|arga(25));

var a = noone;
if (argument_count > 0) {
	if (argument_count == 1) a = argument[0]
	else for (var i=0;i<argument_count;i++){
	    a[i] = argument[i];
	}
}

array_args = [];
array_args[0] = a;
array_args_count = 0;



