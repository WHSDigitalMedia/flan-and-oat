///create_textbox_args(action number, argument[0]...argument[14])
var actNo = argument[0]; //the action to assign these args to 

//allows this to take as many arguments as were passed
for (var i = 1; argument_count > i; i++) {    //must match the number of actions
    with (global.openText) {
        acceptArg[actNo, i - 1] = argument[i];        
    }
}
