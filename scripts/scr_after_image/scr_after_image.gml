/// @description scr_after_image()
/// @param length: max sprites in after image
/// @param spacing: steps between update
/// @param colour: c_white for default
//check to see if trail_x exists VARIABLE INSTANCE EXISTS ONLY WORKS WITH GMS2
if !variable_instance_exists(id, "trail_x")
{
	trail_x = ds_list_create()
	trail_y = ds_list_create()
	after_image_length = argument0
	spacing = argument1
	colour = argument2
}
if argument2 == noone
{
	argument2 = c_white
}

//limit the size of the after image trail
if ds_list_size(trail_x) > after_image_length
{
    ds_list_delete(trail_x,0);
    ds_list_delete(trail_y,0);
	//if you need image index for animation
	//ds_list_delete(trail_image_index, 0)
}
//draw the after image trail with for loop
for(var i=1; i<ds_list_size(trail_x); i++)
{
	//fade out lower in list the more fade out the sprite has example 
	//draw_set_alpha(i/trail_limit); if using simple draw sprite
	//dont draw directly beneacth us if we are not moving
	if trail_x[|i] != x || trail_y[|i] != y
	{
		//draw sprite for each position in the list
		draw_sprite_ext(sprite_index, image_index, trail_x[|i], trail_y[|i], 1, 1, image_angle, colour, i/after_image_length)
	}
}
//This is our spacing
//If spacing is == 0 then we update a new x and y position to the ds list and set spacing back to the value provided in the argument
if spacing <= 0
{
//add x and y to ds list
ds_list_add(trail_x, x);
ds_list_add(trail_y, y);
//set spacing to argument
spacing = argument1
}
//minus one from spacing
else
{
	spacing --
}