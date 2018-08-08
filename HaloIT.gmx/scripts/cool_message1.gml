//cool_message(centerx,centery,width,height,colour1,colour2,colour3,message text,buttonwidth/2,buttonheight/2,alpha,number of buttons,button 1 text,button 2 text)
//
//
font(messagesfont)
//sets the message x
xx=argument0
//sets the message y
yy=argument1
//sets the message width
width=argument2
//sets the message height
height=argument3
//sets the colors
c1=make_color_rgb(50,139,250)
c2=make_color_rgb(0,12,34)
c3=argument6
//determines the number of buttons
buttonnumber=argument11
//if there is one button
if buttonnumber=1{
//the x is centered
buttonx=xx
button2x=-1000
button2y=-1000
button3x=-1000
button3y=-1000
//the y is set
buttony=yy+height/2-25
}
//if there are 2 buttons
if buttonnumber=2{
//the x is set
buttonx=xx-argument8/2-4
button2x=xx+argument8/2+4
button3x=-10000
button3y=-10000

//the y is set
buttony=yy+height/2-25
button2y=yy+height/2-25
}
//if there are 3 buttons
if buttonnumber=3{
//the x is set
buttonx=xx-argument8/2-argument8/2-4
button2x=xx+argument8-argument8
button3x=xx+argument8/2+argument8/2+4
//the y is set
buttony=yy+height/2-25
button2y=yy+height/2-25
button3y=yy+height/2-25
}

text=string_wrap(argument7,width-20,true)
alpha=1
buttonalpha=alpha-alpha+.1
if mouse_x>buttonx-argument8/2
if mouse_x<buttonx+argument8/2{
if mouse_y>buttony-argument9/2
if mouse_y<buttony+argument9/2{
buttonalpha=1
if mouse_check_button(mb_left)
{
//whatever when button 1 is pressed
return 1
}
}
}
else{
buttonalpha=alpha-alpha+.1
}

button2alpha=alpha-alpha+.1
if mouse_x>button2x-argument8/2
if mouse_x<button2x+argument8/2{
if mouse_y>button2y-argument9/2
if mouse_y<button2y+argument9/2{
button2alpha=1
if mouse_check_button(mb_left)
{
//whatever when button 2 is pressed
return 2
}
}
}
else{
button2alpha=alpha-alpha+.1
}

button3alpha=alpha-alpha+.1
if mouse_x>button3x-argument8/2
if mouse_x<button3x+argument8/2{
if mouse_y>button3y-argument9/2
if mouse_y<button3y+argument9/2{
button3alpha=1
if mouse_check_button(mb_left)
{
//whatever when button 3 is pressed
return 3
}
}
}
else{
button3alpha=alpha-alpha+.1
}
button1text=argument12
button2text=argument13
button3text=argument14



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
draw_set_color(c3)
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

//Sets the buttons alpha to the value we determined earlier(whether the mouse is over it or not)
draw_set_alpha(button2alpha)
//Sets the color to the 3rd colour you specified
draw_set_color(c3)
//draws the background for the button
draw_rectangle(button2x-argument8/2,button2y-argument9/2,button2x+argument8/2,button2y+argument9/2,false)
//Sets the color to the first color you specified
draw_set_color(c1)
//draws the outline of the button
draw_rectangle(button2x-argument8/2,button2y-argument9/2,button2x+argument8/2,button2y+argument9/2,true)
//Sets the image to non-transparent
draw_set_alpha(1)
//sets the colour to the first color you specified
draw_set_color(c1)
//draws the outline of the button
draw_rectangle(button2x-argument8/2,button2y-argument9/2,button2x+argument8/2,button2y+argument9/2,true)
draw_text(button2x-string_length(button2text)*4,button2y-argument9/2+argument9/4,button2text)

//Sets the buttons alpha to the value we determined earlier(whether the mouse is over it or not)
draw_set_alpha(button3alpha)
//Sets the color to the second colour you specified
draw_set_color(c3)
//draws the background for the button
draw_rectangle(button3x-argument8/2,button3y-argument9/2,button3x+argument8/2,button3y+argument9/2,false)
//Sets the color to the first color you specified
draw_set_color(c1)
//draws the outline of the button
draw_rectangle(button3x-argument8/2,button3y-argument9/2,button3x+argument8/2,button3y+argument9/2,true)
//Sets the image to non-transparent
draw_set_alpha(1)
//sets the colour to the first color you specified
draw_set_color(c1)
//draws the outline of the button
draw_rectangle(button3x-argument8/2,button3y-argument9/2,button3x+argument8/2,button3y+argument9/2,true)
draw_text(button3x-string_length(button3text)*4,button3y-argument9/2+argument9/4,button3text)

draw_set_font(-1)
