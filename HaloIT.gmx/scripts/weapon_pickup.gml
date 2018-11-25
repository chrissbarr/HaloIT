//pickup_weapon(weapon_id)

var wi = argument0;

ds_list_add(weapons, wi);
weapons_index = ds_list_find_index(weapons, wi);
wi.owner = id;

with (wi) { event_perform(ev_other, ev_user4); }

var debug_string = "ID " + string(id) + " (" + object_get_name(id.object_index) + ") picked up " + wi.name;
show_debug_message(debug_string);
