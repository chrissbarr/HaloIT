// check_carrying_weapon(weapon_object_index)

var alreadyCarrying = -1;
            
for (var j = 0; j < ds_list_size(weapons); j++) {
    if (weapons[| j].object_index == argument0) {
        alreadyCarrying = j;
    }
}

return alreadyCarrying
