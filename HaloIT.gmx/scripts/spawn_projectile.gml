// spawn_projectile(projectile_obj, x, y, direction, spread)
// returns reference to new projectile instance

var proj_obj, xx, yy, dd, spread;
proj_obj = argument0;
xx = argument1;
yy = argument2;
dd = argument3;
spread = argument4;

dd += random(spread) - spread/2;

var proj = instance_create(xx, yy, proj_obj);
proj.direction = dd;
proj.parent = id;

return proj;
