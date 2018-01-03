///init_combat_list()
var ally_num = instance_number(class_ally);
var enemy_num = instance_number(class_enemy);

var ally_inst, enemy_inst;
for (var i = 0; i < ally_num; i++) {
    ally_inst = instance_find(class_ally, i);
    if ally_inst.immobile == 0 ds_priority_add(global.allyQueue, ally_inst, ally_inst.spd);
    else ally_inst.immobile--;
}
for (var j = 0; j < enemy_num; j++) {
    enemy_inst = instance_find(class_enemy, j);
    if enemy_inst.immobile == 0 ds_priority_add(global.enemyQueue, enemy_inst, enemy_inst.spd);
    else enemy_inst.immobile--;
}

//add the player too!
ds_priority_add(global.allyQueue, class_player.id, class_player.spd);
//set it to the turn of the fastest character
global.curTurn = ds_priority_delete_max(global.allyQueue);
