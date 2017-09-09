///scr_move_state
scr_get_input();

//move up
if (up_key){
    phy_position_y -= spd;
    sprite_index = spr_player_up;
    image_speed = 0.2;
}

//move right
if (right_key){
    phy_position_x += spd;
    sprite_index = spr_player_right;
    image_speed = 0.2;
}

//move left
if (left_key){
    phy_position_x -= spd;
    sprite_index = spr_player_left;
    image_speed = 0.2;
}

//move down
if (down_key){
    phy_position_y += spd;
    sprite_index = spr_player_down;
    image_speed = 0.2;
}



//stop animating
if(!up_key and !right_key and !left_key and !down_key){
    image_speed = 0;
    image_index = 0;
}

