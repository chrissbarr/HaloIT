//cool_message(centerx,centery,width,height,colour1,colour2,colour3,message text,buttonwidth/2,buttonheight/2,alpha,number of buttons,button 1 text,button 2 text)


//sets the message x
xx=argument0
//sets the message y
yy=argument1
//sets the message width
width=argument2
//sets the message height
height=argument3
//sets the colors
c1=argument4
c2=argument5
c3=argument6

buttonx=xx
buttony=yy+height/2-25

text=string_wrap(argument7,width-20,true)
alpha=argument10
buttonalpha=alpha+.1
if mouse_x>buttonx-argument8/2
if mouse_x<buttonx+argument8/2{
if mouse_y>buttony-argument9/2
if mouse_y<buttony+argument9/2{
buttonalpha=1
if mouse_check_button(mb_left)
{
//whatever when button 1 is pressed
return true
}
}
}
else{
buttonalpha=alpha+.1
}
button1text=argument12



//sets the messages backgrounds alpha to whatever you said in the calling of the script
draw_set_alpha(alpha)
//Sets the color of the background to the second colour you specified
draw_set_color(c2)
//Draws the background
draw_rectangle(xx-abs(width/2),yy-abs(height/2),xx+abs(width/2),yy+abs(height/2),false)
//Sets the color to the first colour you specified
draw_set_color(c1)
//Sets the image alpha to 1, so non-transparent
draw_set_alpha(1)
//Draws the outline of the main window
draw_rectangle(xx-abs(width/2),yy-abs(height/2),xx+abs(width/2),yy+abs(height/2),true)
//draws the text you specified
draw_set_font(text1)
draw_text(xx-width/2+10,yy-height/2+5,text)
//Sets the buttons alpha to the value we determined earlier(whether the mouse is over it or not)
draw_set_alpha(buttonalpha)
//Sets the color to the second colour you specified
draw_set_color(c2)
//draws the background for the button
draw_rectangle(buttonx-argument8/2,buttony-argument9/2,buttonx+argument8/2,buttony+argument9/2,false)
//Sets the color to the first color you specified
draw_set_color(c1)
//draws the outline of the button
draw_rectangle(buttonx-argument8/2,buttony-argument9/2,buttonx+argument8/2,buttony+argument9/2,true)
//Sets the image to non-transparent
draw_set_alpha(1)
//sets the colour to the first color you specified
draw_set_color(c1)
//draws the outline of the button
draw_rectangle(buttonx-argument8/2,buttony-argument9/2,buttonx+argument8/2,buttony+argument9/2,true)
draw_text(buttonx-string_length(button1text)*4,buttony-argument9/2+argument9/4,button1text)
draw_set_font(-1)

//Sets the color to the second colour you specified
draw_set_color(c2)
//draws the background for the button
draw_rectangle(buttonx-100-50,buttony-25-25,buttonx+100+50,buttony-25,false)
//Sets the color to the first color you specified
draw_set_color(c1)
//draws the outline of the button
draw_rectangle(buttonx-100-50,buttony-25-25,buttonx+100+50,buttony-25,true)
//Sets the image to non-transparent
draw_set_alpha(1)
//sets the colour to the first color you specified
draw_set_color(c2)
//draws the outline of the button

draw_set_color(c_black)
draw_set_font(text1)
draw_text(buttonx-100-50,buttony-25-25,realtext)
draw_set_font(-1)
