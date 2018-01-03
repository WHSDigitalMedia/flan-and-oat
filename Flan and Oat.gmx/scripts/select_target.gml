///select_target()
for (var i = 0; i < instance_number(class_nonGUI); i++) {
    if mouse_check_button_pressed(mb_left) && mouse_check_over(instance_find(class_nonGUI, i)) {
        target = instance_find(class_nonGUI, i);
        show_debug_message(target);
        global.selection_mode = false;
    }
}
