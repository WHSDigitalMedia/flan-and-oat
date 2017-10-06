///save_door_state()
var door_state_list, str, file, door;

//write a save file for each unlocked door in the list
for (var i = 0; i < ds_list_size(global.doorList); i++) {
    door = ds_list_find_value(global.doorList, i);
    
    door_state_list = ds_list_create();
    ds_list_add(door_state_list, false);
    str = ds_list_write(door_state_list);
    
    //Writing to the file
    file = file_text_open_write(global.game_mainDir + "\" + string(door) + ".txt");
    file_text_write_string(file, base64_encode(str));
    file_text_close(file);
    
    //Cleanup
    ds_list_destroy(door_state_list);
}
