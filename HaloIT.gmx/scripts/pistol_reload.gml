if pistol_mag<12{
reloading=true
alarm[11]=round(room_speed*2)
alarm[10]=25
return string('pistol')
}
