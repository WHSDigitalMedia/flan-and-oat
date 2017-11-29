///scr_attack()
with (class_enemy) {
    hp -= 4;
}

//remove the player from the combat queue
ds_priority_delete_max(global.combatQueue);
with (class_move) instance_destroy();
