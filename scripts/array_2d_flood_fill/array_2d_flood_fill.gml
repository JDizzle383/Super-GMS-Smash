/// @desc array_flood_fill(array,x,y,val)
/// @arg array
/// @arg x
/// @arg y
/// @arg val
//
//  Fills a bounded area within a grid with a given value.
//  The area is bounded by values unequal to the initial
//  value found at a given seeded position.
//
//      grid        grid data structure, grid
//      x,y         position to seed fill from, integer
//      val         value filling bounded area, real or string
//
//  Note: Requires short-circuit evaluation enabled.
//
/// GMLscripts.com/license
/// original version: http://www.gmlscripts.com/script/ds_grid_flood_fill

var a = argument0;
var xx = argument1;
var yy = argument2;
var _new = argument3;

var _xmax = 0, _xmin = 10000, _ymax = 0, _ymin = 10000, _area = 0;

var w = array_height_2d(a);
var h = array_length_2d(a,0);	

var _old = a[@ xx, yy]; // get the seed

var _stackx = ds_queue_create();
var _stacky = ds_queue_create();

ds_queue_enqueue(_stackx, xx);
ds_queue_enqueue(_stacky, yy);

while (ds_queue_size(_stackx))
{
    var px = ds_queue_dequeue(_stackx);
    var py = ds_queue_dequeue(_stacky);
    var y1 = py;
    while (y1 >= 0 && a[@ px, y1] == _old) y1--;
    y1++;
    var _spanLeft = false;
    var _spanRight = false;
    while (y1 < h && a[@ px, y1] == _old)
    {
        a[@ px,y1] = _new;
		if (px > _xmax) _xmax = px;
		if (px < _xmin) _xmin = px;
		if (y1 > _ymax) _ymax = y1;
		if (y1 < _ymin) _ymin = y1;
		_area ++; // Calculated area
				
        if (!_spanLeft && px > 0 && a[@ px-1, y1] == _old)
        {
            ds_queue_enqueue(_stackx, px-1);
            ds_queue_enqueue(_stacky, y1);
            _spanLeft = true;
        }
        else if (_spanLeft && px > 0 && a[@ px-1, y1] != _old)
        {
            _spanLeft = false;
        }
        if (!_spanRight && px < w-1 && a[@ px+1, y1] == _old)
        {
            ds_queue_enqueue(_stackx, px+1);
            ds_queue_enqueue(_stacky, y1);
            _spanRight = true;
        }
        else if (_spanRight && px < w-1 && a[@ px+1, y1] != _old)
        {
            _spanRight = false;
        }
        y1++;
    }
}

ds_queue_destroy(_stackx);
ds_queue_destroy(_stacky);

return [_xmin, _ymin, (_xmax - _xmin), (_ymax - _ymin), _area];


