/// @description drag
if gamepad_button_check(obj_hand.padIndex,gp_face1){
grab = true;

xx = x - obj_hand.x;
yy = y - obj_hand.y;
}
else if gamepad_button_check_released(obj_hand.padIndex,gp_face1)
{
grab = false;
}