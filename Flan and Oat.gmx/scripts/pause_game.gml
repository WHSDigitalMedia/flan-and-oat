///pause_game()
if !global.pause {            
    //have to auto save this one or the game won't know where to return to
    save_player_loc(class_player.x, class_player.y, class_player.room_index, true);
    global.roomPrev = room;
    texture_set_interpolation(true);
    global.pause = true;
    global.draw = true;
} else {
    texture_set_interpolation(false);
    if instance_exists(class_button) with (class_button) {instance_destroy();}
    if instance_exists(class_enemy) with (class_enemy) {instance_destroy();}
    if !instance_exists(gui_camera) instance_create(class_player.x, class_player.y, gui_camera);
    with (class_player) {
        class_player.visible = true;
        move_speed = 0;
    }
    with (controller_pause) {if sprite_exists(spr) sprite_delete(spr);}
    
    global.pause = false;
    load_player_loc(true);        //return to previous room
    view_enabled = true;
    view_visible[0] = true;
}

