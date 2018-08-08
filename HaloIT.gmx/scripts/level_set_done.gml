//argument0=level to set done, eg: level_set_done(Level1) (writes to file 'Level1comp')


ini_Set(global.file_name, "CONFIG", string_encrypt(string(argument0)+"comp","199718"), string_encrypt('1',"199718")); 
