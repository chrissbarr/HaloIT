// string_decrypt(str, password)
// str: string to be decrypted
// password: password to encrypt string with
// Note: for optimal security, password should be ~6-8 characters or more, and not a common word/phrase/etc.

var str, pas, str_len, pas_len, str_pos, pas_pos, str_char, pas_char;

str = argument0;
pas = argument1;

str_len = string_length(str);
pas_len = string_length(pas);

pas_pos = 1;
for (str_pos = 1; str_pos <= str_len; str_pos += 1) { // For each character in the string to be decrypted
 // Read the character to be decrypted & the password character to decrypt with
 str_char = string_char_at(str,str_pos);
 pas_char = string_char_at(pas,pas_pos);
 // Convert to ASCII equivalents so we can manipulate them
 str_char = ord(str_char);
 pas_char = ord(pas_char);
 // Decrypt this character
 str_char -= pas_char
 if str_char < 0
  str_char += 256;
 str_char = chr(str_char);
 str = string_delete(str,str_pos,1); // Delete current character
 str = string_insert(str_char,str,str_pos); // Replace with new decrypted character
 pas_pos += 1; // Go on to the next character in the password
 if pas_pos > pas_len // If end of password has been reached
  pas_pos = 1; // Repeat password from start
}

return str;
