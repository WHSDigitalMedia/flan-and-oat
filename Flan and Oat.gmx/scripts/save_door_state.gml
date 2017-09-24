///save_door_state(id)
door_state_list = ds_list_create();
ds_list_add(door_state_list, argument0.lock);
str = ds_list_write(door_state_list);

//Writing to the file
file = file_text_open_write(global.game_mainDir + "\" + string(argument0) + ".txt");
file_text_write_string(file, base64_encode(str));
file_text_close(file);

//Cleanup
ds_list_destroy(door_state_list);
