///create_textbox_actions(action[0]...action[15])

//allows this to take as many arguments as were passed
for (var i = 0; argument_count > i; i++) {    
    with (global.openText) {
        accept[i] = argument[i];        
    }
}
