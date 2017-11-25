///char_select();
if room == rm_combat {
    if isOver(self, 0, 0, 0, 0) && mouse_check_button_pressed(mb_left) {
        global.charSelected = id;
        if object_index == class_player global.charSelected = data_player;
    }
}
