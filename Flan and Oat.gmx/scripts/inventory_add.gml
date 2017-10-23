///inventory_add(name);
var name = argument0;

ini_open("item_data.ini");
if ini_section_exists(name) {
    ds_map_replace(global.inventory_map, ini_read_string(name, "id", -4), ini_read_string(name, "name", "error 404"));
    ds_list_add(global.inventory_num_list, ini_read_string(name, "id", -4));
    var item_desc = ini_read_string(name, "desc", "");
}
ini_close();

create_textbox_short("Obtained " + name + "! " + item_desc + "#[1] Okay", scr_null, noone);
