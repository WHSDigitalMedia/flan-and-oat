///inventory_add(name, amount)
var name = argument0;
var amount = argument1;

var foundMatch = false;

//checks for matching item first
for (var i = 0; i < ds_grid_width(global.inventory_grid); i++) {
    if ds_grid_get(global.inventory_grid, i, 0) == name {
        ds_grid_add(global.inventory_grid, i, 8, amount);
        var item_desc = ds_grid_get(global.inventory_grid, i, 3);
        foundMatch = true;
    }
}

//adds to empty slot 
if !foundMatch {
    ini_open("item_data.ini");
    if ini_section_exists(name) {
        for (var i = 0; i < ds_grid_width(global.inventory_grid); i++) {
            if ds_grid_get(global.inventory_grid, i, 0) == 0 {
                ds_grid_set(global.inventory_grid, i, 0, ini_read_string(name, "name", "missingno"));
                ds_grid_set(global.inventory_grid, i, 1, ini_read_string(name, "type", "missingno"));
                ds_grid_set(global.inventory_grid, i, 2, ini_read_string(name, "canEquip", "missingno"));
                ds_grid_set(global.inventory_grid, i, 3, ini_read_string(name, "desc", "missingno"));
                ds_grid_set(global.inventory_grid, i, 4, ini_read_real(name, "cost", 0));
                ds_grid_set(global.inventory_grid, i, 5, ini_read_string(name, "id", "missingno"));
                ds_grid_set(global.inventory_grid, i, 6, ini_read_string(name, "sprite", "missingno"));
                ds_grid_set(global.inventory_grid, i, 7, ini_read_real(name, "effect", 0));
                ds_grid_set(global.inventory_grid, i, 8, amount);
                ds_grid_set(global.inventory_grid, i, 9, false);
                i = ds_grid_width(global.inventory_grid) + 1;
            }
        }
        
        /*ds_map_replace(global.inventory_map, ini_read_string(name, "id", -4), ini_read_string(name, "name", "error 404"));
        ds_list_add(global.inventory_num_list, ini_read_string(name, "id", -4));*/
        var item_desc = ini_read_string(name, "desc", "");
    }
    ini_close();
}

create_textbox_short("Obtained " + name + "! " + item_desc + "#[1] Okay", scr_null, noone);
