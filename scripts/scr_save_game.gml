///scr_save_game

//make sure the player exists
if(!instance_exists(obj_player_stats)){
    exit;
}

//create the save data structure
var saved_data = ds_map_create();



with(obj_player_stats){
    saved_data[? "room"] = previous_room;
    saved_data[? "x"] = 0;
    saved_data[? "y"] = 0;
    saved_data[? "hp"] = hp;
    saved_data[? "maxhp"] = maxhp;
    saved_data[? "stamina"] = stamina;
    saved_data[? "maxstamina"] = maxstamina;
    saved_data[? "expr"] = expr;
    saved_data[? "maxexpr"] = maxexpr;
    saved_data[? "level"] = level;
    saved_data[? "attack"] = attack;
}



var saved_string = json_encode(saved_data);

saved_string = base64_encode(saved_string);

ds_map_destroy(saved_data);

var file = file_text_open_write(working_directory + "mysavegame.txt");
file_text_write_string(file, saved_string);
file_text_close(file);

show_message("Game Saved");
