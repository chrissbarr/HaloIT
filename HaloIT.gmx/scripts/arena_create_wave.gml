_wave = ds_map_create();
_squads = ds_list_create();
_pickups = ds_list_create();
ds_map_add_list(_wave, "squads", _squads);
ds_map_add_list(_wave, "pickups", _pickups);
return _wave;
