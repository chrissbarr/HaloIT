/* Removes the given object from the given radar's detection list.

Syntax: radar_object_remove(rad,obj)

Arguments:

RAD: The ID of a radar, obtained from a call to create_radar().
OBJ: The object to remove from the radar's detection list.
     
Returns: -1 if the given object is not on this radar's detection list, or
         TRUE (1) if the object was successfully removed.
         
*/

var p,index,temp;
index=-1;
for (p=1; p<ds_list_size(argument0); p+=1) {
temp=ds_list_find_value(argument0,p);
if (ds_list_find_value(temp,0)==argument1) {
index=p;
break;
}
}
if (index<0) { return -1; }

ds_list_delete(argument0,index);
return true;
