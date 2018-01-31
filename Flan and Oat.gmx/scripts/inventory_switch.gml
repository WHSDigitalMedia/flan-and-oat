///inventory_switch(obj)
var inst = argument0;

//initialize temporary array to hold values
var tempArray;
for (var j = 0; j < ds_grid_height(global.inventory_grid); j++) {
    tempArray[j] = ds_grid_get(global.inventory_grid, global.curInvSelect, j);    
}

//get the name and drawing location of the item we're switching with
var newX = inst.x;
var newY = inst.y;
var obj = object_get_name(argument0.object_index);

//locate item in inventory
for (var i = 0; i < ds_list_size(global.itemDisplayList); i++) {
    if ds_list_find_value(global.itemDisplayList, i) == inst {
        //swaps values
        ds_grid_set_grid_region(global.inventory_grid, global.inventory_grid, i, 0, i, ds_grid_height(global.inventory_grid), global.curInvSelect, 0);
        for (var k = 0; k < ds_grid_height(global.inventory_grid); k++) {
            ds_grid_set(global.inventory_grid, i, k, tempArray[k]);
        } 
        global.curInvSelect = i;
        i = ds_grid_width(global.inventory_grid) + 1;
    }
}

//switches itemDisplayList positions
var loc = ds_list_find_index(global.itemDisplayList, inst); //location of the item to switch with
var temp_val = ds_list_find_value(global.itemDisplayList, loc); //that item's current ID
var pos = ds_list_find_index(global.itemDisplayList, id); //location of self
ds_list_replace(global.itemDisplayList, loc, id);
ds_list_replace(global.itemDisplayList, pos, temp_val);

//swaps the positions
with (inst) {
    x = other.prevX;
    y = other.prevY;
}

x = newX;
y = newY;
