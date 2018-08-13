if shield > 0 {
    shield-=other.shieldtake
    effect_create_above(ef_spark,other.x,other.y,0,c_blue,)
} else {
    hp-=other.hptake
    if global.drawblood {
        repeat other.hptake/2
            instance_create(x,y,red_blood_drop_obj)
    }
}

with other
    instance_destroy()
