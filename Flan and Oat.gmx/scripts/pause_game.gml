///pause_game
if !pause {            
    //have to auto save this one or the game won't know where to return to
    save_player_loc(data_player.x, data_player.y, data_player.room_index, true);
    global.roomPrev = room;
    texture_set_interpolation(true);
    pause = true;
    draw = true;
} else {
    if instance_exists(class_button) with (class_button) instance_destroy();
    pause = false;
    sprite_delete(spr);
    load_player_loc(true);        //return to previous room
    view_enabled = true;
    view_visible[0] = true;
}
