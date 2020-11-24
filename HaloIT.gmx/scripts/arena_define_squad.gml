_sqd = ds_list_create();

repeat argument0 {
    ds_list_add(_sqd, grunt_2_obj);
}

repeat argument1 {
    ds_list_add(_sqd, jackal_2_obj);
}

repeat argument2 {
    ds_list_add(_sqd, elite_2_obj);
}

return _sqd;
