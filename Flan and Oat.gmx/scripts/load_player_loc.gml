///load_player_loc(temp)
var temp;
temp = argument0;

if !temp {
    if file_exists(global.game_mainDir + "\save.txt") {
        var file, data, str64, xtarg, ytarg;
        
        //Decrypt data
        file = file_text_open_read(global.game_mainDir + "\save.txt");
        data = file_text_read_string(file);
        str64 = base64_decode(data);
        
        //Read data into game
        player_loc_list = ds_list_create();
        ds_list_read(player_loc_list, str64);
        
        //Set Player vars
        xtarg = ds_list_find_value(player_loc_list, 0);
        ytarg = ds_list_find_value(player_loc_list, 1);
        with (class_player) {
            x = xtarg;
            y = ytarg;
            allowMovement = true;
        }
        room_goto(ds_list_find_value(player_loc_list, 2));
        
        //Cleanup
        ds_list_destroy(player_loc_list);
        file_text_close(file);
    }
} else {
    if file_exists(global.game_mainDir + "\tempSave.txt") {
        var file, data, str64, xtarg, ytarg;
        
        //Decrypt data
        file = file_text_open_read(global.game_mainDir + "\tempSave.txt");
        data = file_text_read_string(file);
        str64 = base64_decode(data);
        
        //Read data into game
        player_loc_list = ds_list_create();
        ds_list_read(player_loc_list, str64);
        
        //Set Player vars
        xtarg = ds_list_find_value(player_loc_list, 0);
        ytarg = ds_list_find_value(player_loc_list, 1);
        with (class_player) {
            x = xtarg;
            y = ytarg;
            allowMovement = true;
        }
        room_goto(ds_list_find_value(player_loc_list, 2));
        
        //Cleanup
        ds_list_destroy(player_loc_list);
        file_text_close(file);
        file_delete(global.game_mainDir + "\tempSave.txt");
    }
}
