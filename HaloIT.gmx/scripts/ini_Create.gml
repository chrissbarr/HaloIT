//ini_Create(filename);
//Argument 0 = filename
//No return value

if(file_exists(string(argument0)+".ini")) {
return 0;
}
else
{
f = file_text_open_write(string(argument0)+".ini");
file_text_close(f);
return 1;
}
