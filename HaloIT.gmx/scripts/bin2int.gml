// bin2int(bin, signed?)
// Converts a binary sequence of any size into integer format
// bin: a sequence of 0s and 1s IN STRING FORMAT
// signed?: If true, treats first bit as an indicator of whether the value is positive or negative
//          0 = negative, 1 = positive (as values of the first bit, not of the signed? argument)
// Returns the real integer derived from the given binary sequence
// Note: Only works in gm7 due to changes in string handling

var signed, pos, _sign, sum, bin, seq_length, i, bit, _power, value;

bin = argument0; // Stores binary sequence expressed as a string

signed = argument1;
if signed { // Signed >> integer could be negative or positive; we have to check
 pos = string_char_at(bin,1); // Read the first bit as the sign indicator
 pos = real(pos); // Convert from char to real
 if pos
  _sign = 1; // Positive
 else
  _sign = -1; // Negative
 bin = string_delete(bin,1,1); // We're done with the sign indicator, so remove it
}
else
 _sign = 1; // Unsigned >> integer will always be positive

sum = 0; // Default, modified later
seq_length = string_length(bin); // Length of sequence

for (i = seq_length; i > 0; i -= 1) { // For each character, starting from the end of the sequence
 bit = string_char_at(bin,i); // Should now be "0" or "1"
 bit = real(bit); // Convert to the real type, so now 0 or 1
 if bit { // The bit reads positive
  _power = seq_length - i;
  value = power(2,_power); // Last bit is worth 1, second-to-last is worth 2, then 4, 8, etc.
  sum += value;
 }
}

sum = sum*_sign;

return sum;
