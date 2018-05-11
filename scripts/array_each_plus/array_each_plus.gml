/// array_each_plus(arr,arr0,arr2,...)

// 参数是长度大致相同的一维数组，
// 该脚本将除第一个参数的所有数组每项值分别添加到第一个数组的对应项中
// Parameters is a one-dimensional array or real number
// The value of an array of the same index is added to the first array,
// if the parameter is real value, then add as val = [val];

//a = [1,2];
//b = [11,22,33];
//c = [1];
//array_each_plus(a,b,c,3); // [(1+11+1+3),(2+22),(33)]
//show_debug_message(a); // { { 16,24,33 },  }

var _a0  = argument[0],_a1;
var _size = array_length_1d(_a0);

for (var i = 1; i < argument_count; i ++) {
    _a1 = argument[i];
    var _size1 = array_length_1d(_a1);
	if (_size1 == 0) {
		_a1 = [_a1];
		_size = 1;
	} else if (_size1 > _size) {
		_a0[@ (_size1-1)] = 0;
		_size = _size1;
	} else _size = _size1;
		       
    for (var j = 0; j < _size; j++) {        
        _a0[@ j] += _a1[j]; 
    }
}

return _a0;

