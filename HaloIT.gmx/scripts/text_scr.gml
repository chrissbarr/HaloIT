if string_length(realtext)<argument0{
timee+=1
timee+=1

xx=argument0;
yy=argument1;

if timee=30
{
realtext=string_delete(realtext,letrposition,1)
realtext=string_insert(' ',realtext,letrposition)
}

if timee=60
{
realtext=string_delete(realtext,letrposition,1)
realtext=string_insert('|',realtext,letrposition)
timee=0
}

letter=keyboard_string
if string_length(letter)>1 or string_length(letter)=1
{
keyboard_string=''
realtext=string_delete(realtext,letrposition,1)
realtext=string_insert(letter,realtext,letrposition)
realtext=string_insert('|',realtext,letrposition+(string_length(letter)))
letrposition+=(string_length(letter))
}
if keyboard_check_pressed(vk_right)and letrposition<string_length(realtext)
{
realtext=string_delete(realtext,letrposition,1)
letrposition+=1
realtext=string_insert('|',realtext,letrposition)
}
if keyboard_check_pressed(vk_left) and letrposition>1
{
realtext=string_delete(realtext,letrposition,1)
letrposition-=1
realtext=string_insert('|',realtext,letrposition)
}
if keyboard_check_pressed(vk_backspace)and letrposition>1
{
realtext=string_delete(realtext,letrposition-1,1)
letrposition-=1
}
if keyboard_check_pressed(vk_delete)
{
realtext=string_delete(realtext,letrposition+1,1)
}

if keyboard_check(vk_control) and keyboard_check_pressed(ord('V'))
{
realtext=string_delete(realtext,letrposition,1)
realtext=string_insert(clipboard_get_text(),realtext,letrposition)
clipboard_lenght=string_length(clipboard_get_text())
realtext=string_insert('|',realtext,letrposition+clipboard_lenght)
letrposition+=clipboard_lenght
}

draw_text(xx,yy,realtext);
if (mouse_x>=xx and mouse_x<=xx+string_width(realtext) and mouse_y>=yy and mouse_y<=yy+string_height(realtext)) {
window_set_cursor(cr_beam);
if (mouse_check_button_pressed(mb_left)) {
realtext=string_delete(realtext,letrposition,1)
temp=0;
while (string_width(string_copy(realtext,1,temp))<floor(mouse_x-xx)) { temp+=1; }
letrposition=temp;
realtext=string_insert('|',realtext,letrposition)
}
}
else { window_set_cursor(cr_arrow); }
}
else{
realtext=string_delete(realtext,letrposition-1,1)
letrposition-=1
}
