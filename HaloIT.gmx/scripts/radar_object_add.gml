/* Adds a new object for the given radar to detect.

Syntax: radar_add_object(id,obj,ignore_parents,color,dotsize)

Arguments:

ID: Radar ID, obtained from a call to create_radar().

OBJ: Object to detect.

IGNORE_PARENTS: True/false. If true, only the given object will be detected.
                objects with OBJ as their parent will NOT be detected. If false,
                objects with parent OBJ will be detected as well.

COLOR: The color to draw the dots on the radar for this object.

DOTSIZE: The radius of the dot, in pixels, drawn on the radar for this object.

Returns: TRUE

*/

var d;
d=ds_list_create();
ds_list_add(d,argument1);
ds_list_add(d,argument2);
ds_list_add(d,argument3);
ds_list_add(d,argument4);
ds_list_add(argument0,d);
return true;
