///init_combat(backdrop, first, enemy object ID, enemy 2, enemy 3...)

//what background to use
var backdrop = argument[0];
switch (backdrop) {
    case "forest":
        
        break;
    case "desert":
        
        break;
    default: break;
}

//sets who goes first
with (controller_combat) {
    first = argument[1];
}

//sets variables in controller_combat to be used later
with (controller_combat) {
    original = argument[2];    
    for (var i = 3; i < argument_count; i++) {
        add_enemy[i - 3] = argument[i];
    }
}

//go to the combat room
global.combat = true;
with (class_player) allowMovement = false;
with (gui_camera) instance_destroy();
pause_game();
room_goto(rm_combat);
