/// @description select coin
if (gamepad_button_check(padIndex,gp_face1))
{
	image_speed = 0;
	image_index = 1;
}
if (gamepad_button_check_released(padIndex,gp_face1))
{
	image_speed = 0;
	image_index = 0;
}