///create_button(name, action, text color, align, font, x, y) 

var title = argument0;
var act = argument1;
var color = argument2;
var align = argument3; //1 is left, 0 is center, 2 is right
var fnt = argument4;
var xtarg = argument5;
var ytarg = argument6;

with (instance_create(xtarg, ytarg, class_button)) {
    name = title;
    action = act;
    text_color = color;
    center = align;
    font = fnt;
}
