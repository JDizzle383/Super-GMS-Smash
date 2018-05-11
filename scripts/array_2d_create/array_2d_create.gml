/// @desc array_2d_create(length, height[, filler=noone])
/// @arg length
/// @arg height
/// @arg [filler]

var a = [], f = noone, l = argument[0], h = argument[1];
a[l - 1, h- 1] = 0;
if (argument_count > 2) f = argument[2];
    
for (var i = 0; i < l; i++) {
	for (var j = 0; j < h; j++) {
		 a[i, j] = f;
	}       
}    

return a;


