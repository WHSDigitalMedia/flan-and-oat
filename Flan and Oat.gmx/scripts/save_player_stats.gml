///save_player_stats()
var player_stats_list, str, file;

player_stats_list = ds_list_create();
ds_list_add(player_stats_list, data_player.atk, data_player.def, data_player.spd, data_player.acc);
str = ds_list_write(player_stats_list);

//Writing to the file
file = file_text_open_append(global.game_mainDir + "\save.txt");
file_text_writeln(file);
file_text_write_string(file, base64_encode(str));
file_text_close(file);

//Cleanup
ds_list_destroy(player_stats_list);
