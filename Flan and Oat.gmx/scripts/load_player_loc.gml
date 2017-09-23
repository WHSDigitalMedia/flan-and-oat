///loads player location
if file_exists(working_directory + "\save.txt") {
    //Decrypt data
    file = file_text_open_read(working_directory + "\save.txt");
    data = file_text_read_string(file);
    file_text_readln(file);
    str64 = base64_decode(data);
    
    //Read data into game
    player_loc_list = ds_list_create();
    ds_list_read(player_loc_list, str64);
    
    //Set Player vars
    tarx = ds_list_find_value(player_loc_list, 0);
    tary = ds_list_find_value(player_loc_list, 1);
    with (class_player) {
        x = other.tarx;
        y = other.tary;
    }
    room_goto(ds_list_find_value(player_loc_list, 2));
    
    //Cleanup
    ds_list_destroy(player_loc_list);
    file_text_close(file);
}
