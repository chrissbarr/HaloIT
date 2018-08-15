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
    if global.drawblood {
        repeat other.hptake/2
        {
            if what='grunt'
                instance_create(x,y,blue_blood_drop_obj)
            if what='jackal'
                instance_create(x,y,purple_blood_drop_obj)
            if what='elite'
                instance_create(x,y,purple_blood_drop_obj)
            if what='hunter'{
                audio_play_sound(bullet_ping_snd, 0, false)
            }
        }
    }
}
with other{
if dieonimpact=true
instance_destroy()
}
