//ini_GetValue(filename,section,key,)
//Argument 0 = filename
//Argument 1 = section name
//Argument 2 = key name
//Returns the string value of the given key
//Returns 1 if  the section doesn't exist
//Returns 0 if the file doesn't exist

if(file_exists(string(argument0)+".ini")) {
 ini_open(string(argument0)+".ini");
 if(ini_section_exists(string(argument1)) = true) {
  if(ini_key_exists(string(argument1),string(argument2)) = true) {
   value = ini_read_string(string(argument1),string(argument2),"");
   return string(value);
   }
  }
  else 
  {
  return 1;
  }
 }
 return 0;
   
