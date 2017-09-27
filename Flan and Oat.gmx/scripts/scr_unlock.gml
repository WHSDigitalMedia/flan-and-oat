///scr_unlock()
var inst = instance_nearest(class_player.x, class_player.y, class_door);
with (inst) lock = noone;
save_door_state(inst);

create_textbox_main("Door successfully unlocked!#[1] You don't have to narrate everything.", scr_null, scr_null, scr_null, noone, noone, noone);
