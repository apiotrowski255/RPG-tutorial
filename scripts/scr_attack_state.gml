///scr_attack_state()
image_speed = 0.5;
switch(sprite_index){
    case spr_player_down:
        sprite_index = spr_player_attack_down;
        break;
    case spr_player_up:
        sprite_index = spr_player_attack_up;
        break;
    case spr_player_right:
        sprite_index = spr_player_attack_right;
        break;
    case spr_player_left:
        sprite_index = spr_player_attack_left;
        break;
}

if(image_index >= 3 and attacked == false){
    var xtemp;
    var ytemp;

    switch(sprite_index){
        case spr_player_attack_down:
            xtemp = x;
            ytemp = y + 12;
            break;
        case spr_player_attack_up:
            xtemp = x;
            ytemp = y - 10;
            break;
        case spr_player_attack_right:
            xtemp = x + 10;
            ytemp = y + 2;
            break;
        case spr_player_attack_left:
            xtemp = x - 10;
            ytemp = y + 2;
            break;
}
    var damageObj = instance_create(xtemp, ytemp, obj_damage);
    damageObj.creator = id;
    damageObj.amount = obj_player_stats.attack;
    attacked = true;
}

