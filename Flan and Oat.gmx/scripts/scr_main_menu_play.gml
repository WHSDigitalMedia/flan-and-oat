if file_exists(working_directory + "\save.txt") {
    instance_create(x, y, class_player);
    load_player_loc();
} else {
    instance_create(352, 320, class_player);
    room_goto(rm_level_1);
}
