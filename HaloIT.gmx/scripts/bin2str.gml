// bin2str(bin)
// Converts a binary sequence to an ASCII string
// bin: binary sequence IN STRING FORMAT
// Returns the appropriate ASCII string

var bin, str, str_len, i, bin_part, char;

bin = argument0; // Binary sequence
str = ""; // Default

str_len = string_length(bin) / 8;
if frac(str_len) != 0 { // Bit count is not a multiple of 8
 show_message("bin2str script error: Bit count must be a multiple of 8");
 exit;
}

for (i = 0; i < str_len; i += 1) { // For each group of 8 bits, or each char
 bin_part = string_copy(bin,(i*8)+1,8); // Copy the 8 bits we want
 char = bin2int(bin_part,0); // Convert them to an ASCII equivalent
 char = chr(char); // Convert from character code to character
 str += char; // Add this character to the string
}

return str;
