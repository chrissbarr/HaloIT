//ini_Set(filename, section, key, value);
//Argument0 = filename
//Argument1 = section name
//Argument2 = key name
//Argument3 = value

if(file_exists(string(argument0)+".ini") = true) {
ini_open(string(argument0)+".ini");
ini_write_string(string(argument1), string(argument2), string(argument3));
ini_close();
return 1;
}
return 0;

