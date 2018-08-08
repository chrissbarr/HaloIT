what=string(argument0)
if shield>0
{
shield-=other.shieldtake
bulletdir=other.direction
effect_create_above(ef_spark,other.x,other.y,0,c_blue)
bullet=other.id
with bullet{
if obj_mc.stealshields=true
if obj_mc.shield<obj_mc.shield_max
obj_mc.shield+=shieldtake}}
else
{
hp-=other.hptake
drawblood=ini_GetValue(global.file_name,"CONFIG",string_encrypt("DRAWBLOOD", "199718"))
drawblood=string_decrypt(drawblood,"199718");
if string(drawblood)==string("true")
{
repeat other.hptake/2
{
if what='grunt'
instance_create(x,y,blue_blood_drop_obj)
if what='jackal'
instance_create(x,y,purple_blood_drop_obj)
if what='elite'
instance_create(x,y,purple_blood_drop_obj)
}
}
}
with other{
if dieonimpact=true
instance_destroy()
}
