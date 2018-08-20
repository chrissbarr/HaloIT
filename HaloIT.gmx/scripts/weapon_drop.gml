//drop_weapon(weapon_id)

var wi = argument0;

ds_list_delete(weapons, ds_list_find_index(weapons, wi));
wi.owner = undefined;
wi.visible = true;
