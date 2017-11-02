///scr_unlock()
var inst = instance_nearest(class_player.x, class_player.y, class_door);
with (inst) lock = noone;
if ds_exists(global.doorList, ds_type_list) && ds_list_find_index(global.doorList, inst) == -1 ds_list_add(global.doorList, inst);

var msg = choose("You don't have to narrate everything.", "Hooray!", "Wait, but I didn't have a key.", "Verstanden.");
create_textbox_main("Door successfully unlocked!#[1] " + msg, scr_null, noone, noone, noone, noone, noone);
