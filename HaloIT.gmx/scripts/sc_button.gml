//This is how to use it:
//  if sc_button(x,y,str,color1,color2,color3,width,height)=true { *-what happens when button is pressed code here-* }
//Shows a button at the given co-ordinates.
//Color1 is the color when the mouse is not on the button.
//Color2 is the color when the mouse is on the button.
//Color3 is the background when the mouse is over the button.
//Perform in the DRAW event!

draw_set_valign(1)
draw_set_halign(1)

var xx, yy, str, col, col2, col3, width, height, alpha, prev_col, prev_alpha;
xx=argument0
yy=argument1
str=argument2
col=argument3
col2=argument4
col3=argument5
width=argument6
height=argument7
alpha=0.3
prev_col=draw_get_color()
prev_alpha=draw_get_alpha()

if (mouse_x>xx-width/2 and mouse_x<xx+width/2 and mouse_y>yy-height/2 and mouse_y<yy+height/2)
{
draw_set_color(col3)
draw_set_alpha(0.2)
draw_rectangle(xx-width/2,yy-height/2,xx+width/2,yy+height/2,0)
draw_set_color(col)
alpha=1
}
else
{
draw_set_color(col2)
alpha=0.3
}

draw_set_alpha(alpha)
draw_rectangle(xx-width/2,yy-height/2,xx+width/2,yy+height/2,1)
draw_text(xx,yy,str)

draw_set_color(prev_col)
draw_set_alpha(prev_alpha)

if mouse_check_button_pressed(mb_left) and alpha=1 { return true } else { return false }
