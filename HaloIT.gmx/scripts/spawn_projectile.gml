// spawn_projectile(projectile_obj, x, y, direction, spread, owner)
// returns reference to new projectile instance

var proj_obj, xx, yy, dd, spread, owner;
proj_obj = argument0;
xx = argument1;
yy = argument2;
dd = argument3;
spread = argument4;
owner = argument5;

var dir = gauss(dd, spread/2);

//dd += random(spread) - spread/2;

var proj = instance_create(xx, yy, proj_obj);
proj.direction = dir;
proj.image_angle = proj.direction;
proj.owner = owner;

return proj;
