///scr_dash_state
if (len == 0){ 
    dir = face * 90;
}
len = spd * 4;

//The the hspd and vspd
hspd = lengthdir_x(len, dir);
vspd = lengthdir_y(len, dir);

//Move the player
phy_position_x += hspd;
phy_position_y += vspd;

//Create the dash effect
var dash = instance_create(x, y, obj_dash_effect);          //creates the dash effect and stores the id in the variable "dash"
dash.sprite_index = sprite_index;
