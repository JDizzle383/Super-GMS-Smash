/// @desc arg1(argument1)
/// @arg arg

var a = noone;
if (argument_count > 0) {
	if (argument_count == 1) a = argument[0]
	else for (var i=0;i<argument_count;i++){
	    a[i] =argument[i];
	}
}

array_args[1] = a;

//array_args_count++;

