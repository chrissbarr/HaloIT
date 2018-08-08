current_points=ini_GetValue(global.file_name,"CONFIG",string_encrypt("Points", "199718"))
current_points=string_decrypt(current_points, "199718")
cp=real(current_points)
return cp
