///create_textbox_message(message)
var msg = argument0;

//disable player movement
class_player.allowMovement = false;

//set textbox up

//these x/y and width/height values work because the textbox draws based off GUI
global.openText = instance_create(30, 480, class_textBox);
with (global.openText) {
    width = 1220;
    height = 240;
    message = msg;
}
