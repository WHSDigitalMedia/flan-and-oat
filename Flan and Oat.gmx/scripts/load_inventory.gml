///load_player_loc()
if file_exists(global.game_mainDir + "\save.txt") {
    var file, data, str64, inventory_list;

    //Decrypt data
    file = file_text_open_read(global.game_mainDir + "\save.txt");
    file_text_readln(file);
    data = file_text_read_string(file);
    file_text_readln(file);
    str64 = base64_decode(data);
    
    //Read data into game
    inventory_list = ds_list_create();
    ds_list_read(inventory_list, str64);
    
    //Add to inventory
    for (var i = 0; i < ds_list_size(inventory_list); i++) {
        inventory_add(string(ds_list_find_value(inventory_list, i)));
    }
    
    //Cleanup
    ds_list_destroy(inventory_list);
    file_text_close(file);
}
