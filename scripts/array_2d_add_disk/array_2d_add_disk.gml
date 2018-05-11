/// @desc array_2d_add_disk(array,x,y,r,val)
/// @arg array
/// @arg x
/// @arg y
/// @arg r
/// @arg val

// the same as ds_grid_add_disk

var a = argument0;
var xx = argument1;
var yy = argument2;
var r = argument3;
var v = argument4;
var w = array_height_2d(a);
var h = array_length_2d(a,0);

var n1 = min(xx + r + 1, w);
var n2 = min(yy + r + 1, h);
for(var i = max(xx - r, 0); i < n1; i ++) {
	for(var j = max(yy - r, 0); j < n2; j ++) {
		if power(i - xx, 2) + power(j - yy, 2) <= r * r
		a[@ i, j] += v;
	}
}
	
return a;
