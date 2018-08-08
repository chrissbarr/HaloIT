current_points=ini_GetValue(global.file_name,"CONFIG",string_encrypt("Points", "199718"))
current_points=string_decrypt(current_points, "199718")
cp=real(current_points)
np=cp+argument0
ini_Set(global.file_name, "CONFIG", string_encrypt("Points", "199718"), string_encrypt(string(np), "199718")); 
current_kills=ini_GetValue(global.file_name,"KILLS",string_encrypt(argument1, "199718"))
current_kills=string_decrypt(current_kills, "199718")
ck=real(current_kills)
nk=ck+1
ini_Set(global.file_name, "KILLS", string_encrypt(argument1, "199718"), string_encrypt(string(nk), "199718")); 
