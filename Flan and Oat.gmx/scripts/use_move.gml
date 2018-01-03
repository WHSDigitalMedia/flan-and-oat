///use_move(single, [type, amount])
/***************************************************
  If only single is provided and it is true, then this will only hit one target, 
  if false, it'll hit all targets. 
  
  If type and amount are also provided, then this script will run assuming it's
  being called from an enemy object.
 ***************************************************/
if argument_count == 1 {
    var single = argument[0];
    var targ;
    
    if single targ = target;
    else targ = class_enemy;
    
    if instance_exists(target) && global.selection_mode && global.selected_move == self {
        switch (type) {
            case move_types.damage:
                with (targ) {
                    hp -= other.amount;
                    hp = clamp(hp, 0, max_hp);
                } 
                break;
            case move_types.heal: 
                with (targ) {
                    if hp < max_hp hp += other.amount;
                    hp = clamp(hp, 0, max_hp);
                }
                break;
            case move_types.buff:
                var stat = string_letters(amount);
                with (targ) {
                    buff = real(string_digits(other.amount));
                    switch (stat) {
                        case "atk": 
                            atk += buff;
                            break;
                        case "def":
                            def += buff;
                            break;
                        case "spd":
                            spd += buff;
                            break;
                        case "acc":
                            acc += buff;
                            break;
                        default: break;
                    }
                }
                break;
            case move_types.dot: 
                break;
            case move_types.immobile:
                with (targ) {
                    immobile = other.amount;
                }
                ds_priority_delete_value(global.enemyQueue, targ);
                break;
            case move_types.invulnerable:
                break;
            default: break;
        }
        
        //variable resets
        global.selection_mode = false;
        global.selected_move = noone;
        global.charSelect = noone;
    
        for (var i = 0; i < instance_number(class_button); i++) {
            with (instance_find(class_button, i)) instance_destroy();
        }
        
        //getting the next person in the queue
        if !ds_priority_empty(global.allyQueue) {
            global.curTurn = ds_priority_delete_max(global.allyQueue);
        } else {
            global.curTurn = ds_priority_delete_max(global.enemyQueue);
        }
    }
} else {
    var single = argument[0];
    var move_type = argument[1];
    var move_amount = argument[2];
    
    switch (move_type) {
        case move_types.damage:
            with (class_player) {
                hp -= move_amount;
                hp = clamp(hp, 0, max_hp);
            } 
            if single == move_multi {
                with (class_ally) {
                    hp -= move_amount;
                    hp = clamp(hp, 0, max_hp);       
                }
            }
            break;
        case move_types.heal: 
            if hp < max_hp hp += move_amount;
            hp = clamp(hp, 0, max_hp);
            if single == move_multi {
                with (class_enemy) {
                    if hp < max_hp hp += move_amount;
                    hp = clamp(hp, 0, max_hp);
                }
            }
            break;
        case move_types.buff:
            break;
        case move_types.dot: 
            break;
        case move_types.immobile:
            break;
        case move_types.invulnerable:
            break;
        default: break;
    }
    
    //getting the next person in the queue
    if !ds_priority_empty(global.enemyQueue) {
        global.curTurn = ds_priority_delete_max(global.enemyQueue);
    } else {
        global.curTurn = noone;
        //resets the priority queues
        init_combat_list();
    }
}
