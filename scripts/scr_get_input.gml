///scr_get_input
//currently only set and used for the player object
// Gets keyboard input (it can also get mouse input)
up_key = keyboard_check(vk_up);
right_key = keyboard_check(vk_right);
left_key = keyboard_check(vk_left);
down_key = keyboard_check(vk_down);
dash_key = keyboard_check_pressed(ord("C"));
attack_key = keyboard_check_pressed(ord("X"));
pause_key = keyboard_check_pressed(vk_escape);
spell_key = keyboard_check_pressed(ord("V"));
swap_key = keyboard_check_pressed(ord("Z"));

//get the axis
x_axis = (right_key - left_key);
y_axis = (down_key - up_key);

//check for gamepad input 
if (gamepad_is_connected(0)){
    gamepad_set_axis_deadzone(0, 0.35);
    x_axis = gamepad_axis_value(0, gp_axislh);
    y_axis = gamepad_axis_value(0, gp_axislh);  
    dash_key = gamepad_button_check_pressed(0, gp_face1);  
    attack_key = gamepad_button_check_pressed(0, gp_face3); 
    pause_key = gamepad_button_check_pressed(0, gp_start);
    spell_key = gamepad_button_check_pressed(0, gp_face2); 
    swap_key = gamepad_button_check_pressed(0, gp_face4); 
}
