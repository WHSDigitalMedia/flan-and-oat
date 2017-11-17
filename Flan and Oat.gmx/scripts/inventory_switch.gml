///inventory_switch()

//initialize temporary array to hold values
var tempArray;
for (var j = 0; j < ds_grid_height(global.inventory_grid); j++) {
    tempArray[j] = ds_grid_get(global.inventory_grid, global.curInvSelect, j);    
}

//get the name and drawing location of the item we're switching with
var inst = instance_place(x, y, class_item);
var toSwitch = object_get_name(inst.object_index);
var newX = inst.x;
var newY = inst.y;


//locate item in inventory
for (var i = 0; i < ds_grid_width(global.inventory_grid); i++) {
    if ds_grid_get(global.inventory_grid, i, 5) == toSwitch {
        //swaps values
        ds_grid_set_grid_region(global.inventory_grid, global.inventory_grid, i, 0, i, ds_grid_height(global.inventory_grid), global.curInvSelect, 0);
        for (var k = 0; k < ds_grid_height(global.inventory_grid); k++) {
            ds_grid_set(global.inventory_grid, i, k, tempArray[k]);
        } 
        global.curInvSelect = i;
        i = ds_grid_width(global.inventory_grid) + 1;
    }
}

//swaps the positions
with (inst) {
    x = other.prevX;
    y = other.prevY;
}

x = newX;
y = newY;
