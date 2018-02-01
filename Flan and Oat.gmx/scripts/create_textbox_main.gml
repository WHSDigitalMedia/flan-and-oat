///create_textbox_main(message, action[0]...action[2], arg[0]...arg[2])
var msg = argument0;
var scr0 = argument1;
var scr1 = argument2;
var scr2 = argument3;
var arg0 = argument4;
var arg1 = argument5;
var arg2 = argument6;

//disable player movement
class_player.allowMovement = false;

with (instance_create(30, 480, class_textBox)) {
    message = msg;
    accept[0] = scr0;
    accept[1] = scr1;
    accept[2] = scr2;
    acceptArg[0, 0] = arg0;
    acceptArg[1, 0] = arg1;
    acceptArg[2, 0] = arg2; 
    width = 1220;
    height = 240;
}
