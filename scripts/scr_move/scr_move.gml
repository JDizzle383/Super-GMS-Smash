/// @func scr_move(device,deadzone)
/// @param device
/// @param deadzone
padIndex = argument0;
deadzone = argument1;
if (gamepad_is_connected(padIndex)){
gamepad_set_axis_deadzone(padIndex,deadzone);
	if (gamepad_axis_value(padIndex,gp_axislh) > 0)
	{
		x += 6;
	}
	if (gamepad_axis_value(padIndex,gp_axislh) < 0)
	{
		x -= 6;
	}
	if (gamepad_axis_value(padIndex,gp_axislv) > 0)
	{
		y += 6;
	}
	if (gamepad_axis_value(padIndex,gp_axislv) < 0)
	{
		y -= 6;
	}
}