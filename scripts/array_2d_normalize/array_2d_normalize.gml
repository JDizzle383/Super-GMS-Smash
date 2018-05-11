/// @desc array_2d_normalize(map)
/// @arg map

// array 2d:
// 2 0.5
// 5 10
// min = 0.5 max = 10;
// (2-0.5)/(10-0.5) = 0.15;
// normalize:
// 0.15 0
// 0.47 1


// Normalizes the elevation values from 0 to ELEVATION_MAX, 
// and returns the highest point (useful to place dungeon)
var _smallest = 1000000;	// A large value, INT_MAX would work well here.
var _largest = 0;
var _map = argument0,w = array_height_2d(_map),h = array_length_2d(_map,0);
			
// Find the largest and smallest tiles
for (var ix = 0; ix < w; ix++) {
	for (var iy = 0; iy < h; iy++) {
		if (_map[@ ix, iy] > _largest) _largest = _map[@ ix, iy];
		if (_map[@ ix, iy] < _smallest) _smallest = _map[@ ix, iy];
	}
}
			
// Normalize
for (ix = 0; ix < w; ix++) {
	for (iy = 0; iy < h; iy++) {
		var _percent = (_map[@ ix, iy] - _smallest) / (_largest - _smallest);
		_map[@ ix, iy] = _percent; //round(_percent * _elevation_max);
	}
}
	
return _map;
