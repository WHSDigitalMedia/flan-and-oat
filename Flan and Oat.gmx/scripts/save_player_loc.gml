///save player location
player_loc_list = ds_list_create();
ds_list_add(player_loc_list, class_player.x, class_player.y, room);
str = ds_list_write(player_loc_list);
