///inventory_initialize()
ini_open("item_data.ini");

for (var i = 0; i < ds_grid_width(global.inventory_grid); i++) {
    ds_grid_set(global.inventory_grid, i, 0, ini_read_string("Null", "name", ""));
    ds_grid_set(global.inventory_grid, i, 1, ini_read_string("Null", "type", ""));
    ds_grid_set(global.inventory_grid, i, 2, ini_read_string("Null", "desc", ""));
    ds_grid_set(global.inventory_grid, i, 3, ini_read_real("Null", "cost", 0));
    ds_grid_set(global.inventory_grid, i, 4, ini_read_string("Null", "id", ""));
    ds_grid_set(global.inventory_grid, i, 5, ini_read_string("Null", "stat", ""));
    ds_grid_set(global.inventory_grid, i, 6, 1);
}

ini_close();
