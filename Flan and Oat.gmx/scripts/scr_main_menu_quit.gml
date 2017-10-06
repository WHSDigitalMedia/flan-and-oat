///scr_main_menu_quit()
if ds_exists(global.doorList, ds_type_list) ds_list_destroy(global.doorList);
game_end();
