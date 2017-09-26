///load_door_state(id)
if file_exists(global.game_mainDir + "\" + string(argument0) + ".txt") {
    var file, data, str64, door_state_list;    

    //Decrypt data
    file = file_text_open_read(global.game_mainDir + "\" + string(argument0) + ".txt");
    data = file_text_read_string(file);
    str64 = base64_decode(data);
    
    //Read data into game
    door_state_list = ds_list_create();
    ds_list_read(door_state_list, str64);
    
    //set door variables
    argument0.lock = ds_list_find_value(door_state_list, 0);
    
    //Cleanup
    ds_list_destroy(door_state_list);
    file_text_close(file);
}
