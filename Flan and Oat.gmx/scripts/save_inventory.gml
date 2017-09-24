///save_inventory()
var inventory_list, num, str, file;

inventory_list = ds_list_create();
for (var i = 0; i < ds_list_size(global.inventory_num_list); i++) {
    num = ds_list_find_value(global.inventory_num_list, i);
    ds_list_add(inventory_list, ds_map_find_value(global.inventory_map, num));
}
str = ds_list_write(inventory_list);

//Writing to the file
file = file_text_open_append(global.game_mainDir + "\save.txt");
file_text_writeln(file);
file_text_write_string(file, base64_encode(str));
file_text_close(file);

//Cleanup
ds_list_destroy(inventory_list);
