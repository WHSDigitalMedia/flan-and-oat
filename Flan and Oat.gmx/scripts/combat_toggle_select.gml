///combat_toggle_select()
with (controller_combat) {
    select_mode = true;
    move_to_use = other.name;
    show_debug_message(move_to_use);
}
