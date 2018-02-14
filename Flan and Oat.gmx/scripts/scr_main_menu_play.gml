///scr_main_menu_play()
if file_exists(global.game_mainDir + "\save.txt") {
    instance_create(x, y, class_player);
    load_player_loc(false);
} else {
    instance_create(320, 224, class_player);
    room_goto(rm_level_1);
}
