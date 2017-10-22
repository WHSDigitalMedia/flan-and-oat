///create_textbox_message(message)
var msg = argument0;

//disable player movement
class_player.allowMovement = false;

//set textbox up
global.openText = instance_create(32, 32, class_textBox);
with (global.openText) {
    width = 1200;
    height = 700;
    message = msg;
}
