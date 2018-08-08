if shotgun_mag<12{
reloading=true
alarm[11]=room_speed*1/2
alarm[10]=room_speed*1/2-2
return string('shotgun')
}
