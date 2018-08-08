//ini_Remove(filename);
//Argument 0 = filename
//Returns 1 on removal
//Returns 0 if the file isn't found

if(file_exists(string(argument0)+".ini") = true) {
file_delete(string(argument0)+".ini");
return 1;
}
return 0;
