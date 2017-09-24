///save_player_loc(x, y, room)
var player_loc_list, str, file;

player_loc_list = ds_list_create();
ds_list_add(player_loc_list, argument0, argument1, argument2);
str = ds_list_write(player_loc_list);

//Writing to the file
file = file_text_open_write(global.game_mainDir + "\save.txt");
file_text_write_string(file, base64_encode(str));
file_text_close(file);

//Cleanup
ds_list_destroy(player_loc_list);
