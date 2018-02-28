///init_combat(enemy id)

with (argument0) { //makes sure the enemy makes it to the battle screen
    persistent = true;
}

//actually transition to combat stage
global.combat = true;
global.prev_enemy_x = x;
global.prev_enemy_y = y;
pause_game();

with (class_player) { //repos player
    x = 128;
    y = 352;
}
with (argument0) { //repos the enemey
    x = 1012;
    y = 352;   
}
