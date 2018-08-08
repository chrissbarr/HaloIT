// str2bin(str)
// Converts a regular string to a binary sequence
// str: an ASCII string of any length
// Returns the binary sequence IN STRING FORMAT

var str, bin, str_len, i, char, bin_part;

str = argument0;

bin = "";
str_len = string_length(argument0);

for (i = 1; i <= str_len; i += 1) { // For each character in the string
 char = string_char_at(str,i);
 char = ord(char); // Convert to ASCII integer equivalent
 bin_part = int2bin(char,0,8); // Convert to binary sequence
 bin += bin_part;
}

return bin;
