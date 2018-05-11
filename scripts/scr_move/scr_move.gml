///scr_move(device,deadzone);
dvc = argument0;
dzn = argument1;

move_up = keyboard_check(vk_up);
move_down = keyboard_check(vk_down);
move_left =keyboard_check(vk_left);
move_right =keyboard_check(vk_right);

xx = move_right-move_left;
yy = move_down-move_up;

if (gamepad_is_connected(dvc)){
gamepad_set_axis_deadzone(dvc,dzn)
xx=gamepad_axis_value(dvc,gp_axislh);
yy=gamepad_axis_value(dvc,gp_axislv);
}