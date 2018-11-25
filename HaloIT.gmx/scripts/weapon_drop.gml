//drop_weapon(weapon_id)

var wi = argument0;

ds_list_delete(weapons, ds_list_find_index(weapons, wi));
wi.owner = undefined;
wi.visible = true;
with (wi) { event_perform(ev_other, ev_user3); }

var debug_string = "ID " + string(id) + " (" + object_get_name(id.object_index) + ") dropped " + wi.name;
show_debug_message(debug_string);
