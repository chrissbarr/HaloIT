/*This script draws a value as a bar, keeping the bar size relative nomatter what the maximum value*/
//argument0=x position
//argument1=y position
//argument2=bar width
//argument3=bar height
//argument4=the current value of the bar
//argument5=the maximum value of the bar
//argument6=the color of the bar

//set temp variables
var x1, y1, x2, y2;
var width, height;
var value, value_max;
var border;

//get values from arugments
x1 = argument0;
y1 = argument1;
width = argument2;
height = argument3;
value = argument4;
value_max = argument5;


//draw the back of the health bar
border = 1;
if argument7=true{
draw_set_color(c_black);
draw_rectangle(x1-border,   y1-border,  x1+width+border,    y1+height+border,   false);

draw_set_color(argument8);
draw_rectangle(x1,   y1,  x1+width,    y1+height,   false);


}

if (value != 0) {

    //set length and height values
    x2 = x1 + (value/value_max * width);
    y2 = y1 + height;
    
    //draw the health bar
    draw_set_color(argument6);
    draw_rectangle(x1,y1,x2,y2,false);

}

//set the color back to black
draw_set_color(c_black);


