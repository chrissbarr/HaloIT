/* Draws the given radar with the given options.

Syntax: draw_radar(id,xDetect,yDetect,x,y,r,bg,border);

Arguments:

ID: The ID of a radar, obtained from create_radar().

XDETECT: The X-coordinate of the center of the radar's object detection area.

YDETECT: The X-coordinate of the center of the radar's onject detection area.

X: The X-coordinate of the center of the radar drawn.

Y: The Y-coordinate of the center of the radar drawn.

R: The radius of the drawn radar. Scale will automatically be calculated from
   this.
   
BG: The background-color of the radar, or -1 for transparent (i.e. no
    background. The dots are drawn directly on the room).

BORDER: The color of the border, or -1 for no border.

Returns: TRUE

*/

var ind,xx,yy,r,bg,bord,scale,p,oc,temp,col;
oc=draw_get_color();
ind=argument0;
__xd=argument1;
__yd=argument2;
xx=argument3;
yy=argument4;
r=argument5;
bg=argument6;
bord=argument7;
__rd=ds_list_find_value(ind,0);
scale=r/ds_list_find_value(ind,0);
if (bg>=0) {
draw_set_color(bg);
draw_circle(xx,yy,r,0);
}
for (p=1; p<ds_list_size(ind); p+=1) {
temp=ds_list_find_value(ind,p);
__obj=ds_list_find_value(temp,0);
__ig=ds_list_find_value(temp,1);
col=ds_list_find_value(temp,2);
__dot=ds_list_find_value(temp,3);
__ok=0;
with (__obj) {
if (point_distance(x,y,other.__xd,other.__yd)<=other.__rd-other.__dot) {
if (other.__ig==0 or (other.__ig==1 and object_index==other.__obj)) {
with (other) {
draw_set_color(col);
draw_circle(xx+(other.x-__xd)*scale,yy+(other.y-__yd)*scale,__dot,0);
}
}
}
}
}
if (bord>=0) {
draw_set_color(bord);
draw_circle(xx,yy,r,1);
}
draw_set_color(oc);
return true;
