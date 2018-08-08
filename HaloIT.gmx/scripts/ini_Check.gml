//ini_Check(filename, section, key)
//Argument 0 = filename
//Argument 1 = section
//Argument 2 = key
//Returns 2 if both section and key exist
//Returns 1 if just the section exists but NOT the key
//Returns 0 if the section doesn't exist
//Returns -1 if the file doesn't exist
//Note: If all fail, it will return - 1

if(file_exists(string(argument0)+".ini") = true) {
 ini_open(string(argument0)+".ini");
 if(ini_section_exists(string(argument1)) = true) {
  if(ini_key_exists(string(argument1),string(argument2)) = true) {
   return 2;
   }
  return 1;
  }
 return 0;
 }
return -1;
