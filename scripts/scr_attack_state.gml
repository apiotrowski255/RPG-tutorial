///scr_attack_state()
image_speed = 0.5;
movement = ATTACK;

if(image_index >= 3 and attacked == false){
    var xtemp;
    var ytemp;

    switch(face){
        case DOWN:
            xtemp = x;
            ytemp = y + 12;
            break;
        case UP:
            xtemp = x;
            ytemp = y - 10;
            break;
        case RIGHT:
            xtemp = x + 10;
            ytemp = y + 2;
            break;
        case LEFT:
            xtemp = x - 10;
            ytemp = y + 2;
            break;
}
    audio_play_sound(snd_sword_attack, 8, false);
    var damageObj = instance_create(xtemp, ytemp, obj_damage);
    damageObj.creator = id;
    damageObj.amount = obj_player_stats.attack;
    attacked = true;
}

