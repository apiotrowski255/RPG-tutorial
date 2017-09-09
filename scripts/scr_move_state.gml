///scr_move_state
scr_get_input();

//get the axis
var x_axis = (right_key - left_key);
var y_axis = (down_key - up_key);

//Get direction
var dir = point_direction(0, 0 ,x_axis, y_axis);

//get the length
if(x_axis == 0 and y_axis == 0){
    len = 0;
} else {
    len = spd;
}

//The the hspd and vspd
hspd = lengthdir_x(len, dir);
vspd = lengthdir_y(len, dir);

//Move the player
phy_position_x += hspd;
phy_position_y += vspd;

//Control the sprite
image_speed = 0.2;
if(len == 0){
    image_index = 0;
}
//Vertical sprites
if (vspd > 0){
    sprite_index = spr_player_down;
} else if (vspd < 0){
    sprite_index = spr_player_up;
}

//Horizontal sprites
if (hspd > 0){
    sprite_index = spr_player_right;
} else if (hspd < 0){
    sprite_index = spr_player_left;
}

