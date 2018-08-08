//string_wrap(string,width, cut at spaces (true or false) )
// By Ruud van Asseldonk
str = argument0;
ww = argument1;

var newstr, i, a, retval;
newstr = '';
retval = '';

if !argument2 {
for (i=0;str != '';i=i)
{
newstr[i] += string_copy(str,1,1);
str = string_delete(str,1,1);
if string_width(newstr[i]+'A')>ww
{
i+=1;
newstr[i] = '';}
}}
else {
for (i=0;str != '';i=i)
{
if string_pos(' ',str) != 0
{
newstr[i] += string_copy(str,1,string_pos(' ',str));
str = string_delete(str,1,string_pos(' ',str));
}else
{
newstr[i] += str;
str = '';
}
if string_width(newstr[i]+string_copy(str,1,string_pos(' ',str)))>ww
{
i+=1;
newstr[i] = '';}
}}

for(a=0;a<i;a+=1)
{
retval += newstr[a]+'#';
}
retval += newstr[i];

return retval;
