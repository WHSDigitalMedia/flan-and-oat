///scr_unlock()
var inst = instance_nearest(class_player.x, class_player.y, class_door);
with (inst) lock = noone;
save_door_state(inst);
