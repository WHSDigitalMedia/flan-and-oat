///combat_spawn_objects(object to spawn)
if argument[0] == class_enemy {
    do {
        var xcoord = choose(e_left, e_right);
        var ycoord = choose(e_init, e_init + e_space, e_init + e_space * 2, e_init + e_space * 3);
    } until (!place_meeting(xcoord, ycoord, all));
    
    instance_create(xcoord, ycoord, argument[0]);
} else {
    do {
        var xcoord = choose(p_left, p_right);
        var ycoord = choose(p_init, p_init + p_space, p_init + p_space * 2);
    } until (!place_meeting(xcoord, ycoord, all));
    
    if argument[0] == class_ally instance_create(xcoord, ycoord, argument[0]);
    else {
        with (class_player) {
            x = xcoord;
            y = ycoord;
            allowMovement = false;
        }
    }
}
