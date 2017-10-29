///load_player_stats()
if file_exists(global.game_mainDir + "\save.txt") {
    var file, data, str64;
    
    //Decrypt data
    file = file_text_open_read(global.game_mainDir + "\save.txt");
    file_text_readln(file);
    file_text_readln(file);
    data = file_text_read_string(file);
    str64 = base64_decode(data);
    
    //Read data into game
    var player_stats_list = ds_list_create();
    ds_list_read(player_stats_list, str64);
    
    //Set Player vars
    with (data_player) {
        atk = ds_list_find_value(player_stats_list, 0);
        def = ds_list_find_value(player_stats_list, 1);
        spd = ds_list_find_value(player_stats_list, 2);
        acc = ds_list_find_value(player_stats_list, 3);
    }
    
    //Cleanup
    ds_list_destroy(player_stats_list);
    file_text_close(file);
}
