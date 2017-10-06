///save_game()
save_player_loc(data_player.x, data_player.y, data_player.room_index, false);
save_inventory();
save_player_stats();
save_door_state();

name = "Done!"
action = scr_null;
