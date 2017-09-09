///scr_get_input
// Gets keyboard input (it can also get mouse input)
up_key = keyboard_check(vk_up);
right_key = keyboard_check(vk_right);
left_key = keyboard_check(vk_left);
down_key = keyboard_check(vk_down);

//get the axis
x_axis = (right_key - left_key);
y_axis = (down_key - up_key);

//check for gamepad input 
if (gamepad_is_connected(0)){
    gamepad_set_axis_deadzone(0, 0.35);
    x_axis = gamepad_axis_value(0, gp_axislh);
    y_axis = gamepad_axis_value(0, gp_axislh);    
}
