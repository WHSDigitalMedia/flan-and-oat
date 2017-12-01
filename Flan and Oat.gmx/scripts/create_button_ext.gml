///create_button_ext(name, action, text color, align, font, x, y, width, height) 
//provides the option to manually override the box's width and height

var title = argument0;
var act = argument1;
var color = argument2;
var align = argument3; //1 is left, 0 is center, 2 is right
var fnt = argument4;
var xtarg = argument5;
var ytarg = argument6;
var width = argument7;
var height = argument8;

with (instance_create(xtarg, ytarg, class_button)) {
    name = title;
    action = act;
    text_color = color;
    center = align;
    font = fnt;
    oWidth = width;
    oHeight = height;
}
