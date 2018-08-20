//pickup_weapon(weapon_id)

var wi = argument0;

ds_list_add(weapons, wi);
weapons_index = ds_list_find_index(weapons, wi);
wi.owner = id;
wi.visible = false;
