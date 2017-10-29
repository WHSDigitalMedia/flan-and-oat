///load_inventory()
if file_exists(global.game_mainDir + "\invSave.txt") {
    var file, data, str64;
    
    //Read data
    file = file_text_open_read(global.game_mainDir + "\invSave.txt");
    data = file_text_read_string(file);
    str64 = base64_decode(data); //decrypt data
    file_text_close(file);
    
    global.inventory_grid = ds_grid_read(global.inventory_grid, str64);
    
    /*//Read data into game
    inventory_list = ds_list_create();
    ds_list_read(inventory_list, str64);
    
    //Add to inventory
    for (var i = 0; i < ds_list_size(inventory_list); i++) {
        //inventory_add(string(ds_list_find_value(inventory_list, i)));
    }
    
    //Cleanup
    ds_list_destroy(inventory_list);*/
    
}
