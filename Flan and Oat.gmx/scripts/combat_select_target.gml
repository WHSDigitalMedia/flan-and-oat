///combat_select_target()
if mouse_check_button_pressed(mb_left) {
    targ = instance_nearest(mouse_x, mouse_y, class_nonGUI);
    select_mode = false;
    show_debug_message('debug');
}
