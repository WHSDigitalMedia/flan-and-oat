///create_button_ext(name, action, preaction, inaction, text color, align, font, x, y, width, height) 
//provides the option to manually override the box's width, height, and mouse over action

var title = argument0;
var act = argument1;
var pact = argument2;
var iact = argument3;
var color = argument4;
var align = argument5; //1 is left, 0 is center, 2 is right
var fnt = argument6;
var xtarg = argument7;
var ytarg = argument8;
var width = argument9;
var height = argument10;

with (instance_create(xtarg, ytarg, class_button)) {
    name = title;
    action = act;
    isOverAction = pact;
    inaction = iact;
    text_color = color;
    center = align;
    font = fnt;
    oWidth = width;
    oHeight = height;
}
