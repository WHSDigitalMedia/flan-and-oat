///save_game()
save_player_loc(class_player.x, class_player.y, class_player.room_index, false);
save_inventory();
save_player_stats();
save_door_state();

name = "Done!"
action = scr_null;
