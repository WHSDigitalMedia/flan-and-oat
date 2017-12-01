///scr_main_menu_switch()
//changes directories
if global.saveNumber == 1 {
    global.saveNumber = 2;
    global.game_mainDir = working_directory + "\saveData2";
} else if global.saveNumber == 2 {
    global.saveNumber = 3;
    global.game_mainDir = working_directory + "\saveData3";
} else if global.saveNumber == 3 {
    global.saveNumber = 1;
    global.game_mainDir = working_directory + "\saveData";
}

var file;
file = file_text_open_write("saveNumber.txt");
file_text_write_real(file, global.saveNumber);
file_text_close(file);

create_button("Save: " + string(global.saveNumber), scr_main_menu_switch, c_white, 1, fnt_textbox, room_width/2, room_height/2 + 224); 
instance_destroy();
