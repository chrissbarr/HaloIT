/* Creates a new radar and returns its ID.

Syntax: create_radar(rad)

RAD: Radius of detection.

Returns: The ID of the newly created radius.

eg
global.radar=create_radar(rad)

*/

var d;
d=ds_list_create();
ds_list_add(d,argument0);
return d;
