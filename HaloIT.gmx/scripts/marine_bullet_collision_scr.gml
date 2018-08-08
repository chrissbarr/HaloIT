if shield>0{
shield-=other.shieldtake
effect_create_above(ef_spark,other.x,other.y,0,c_blue,)}
else{
hp-=other.hptake
repeat other.hptake/2
drawblood=ini_GetValue(global.file_name,"CONFIG",string_encrypt("DRAWBLOOD", "199718"))
drawblood=string_decrypt(drawblood,"199718");
if string(drawblood)==string("true"){
repeat other.hptake/2
instance_create(x,y,red_blood_drop_obj)}}



with other
instance_destroy()
