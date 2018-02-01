///create_textbox_short(message, action[0], arg[0])
var msg = argument0;
var scr0 = argument1;
var arg0 = argument2;

//disable player movement
class_player.allowMovement = false;

with (instance_create(30, 480, class_textBox)) {
    message = msg;
    accept[0] = scr0;
    acceptArg[0, 0] = arg0;
    width = 1220;
    height = 240;
}
