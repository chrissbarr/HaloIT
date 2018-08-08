// int2bin(int, signed?, bits)
// Converts an integer of any size into binary format
// int: integer (real datatype)
// signed?: If true, treats first bit as an indicator of whether the value is positive or negative
//          0 = negative, 1 = positive (as values of the first bit, not of the signed? argument)
// bits: number of bits to use (0 or leave out for minimum amount)
// Returns the binary sequence IN STRING FORMAT

var new_int, bin, _sign, _power, value;

if argument0 == 0
 return ""; // Avoid error since log(0) is undefined

new_int = argument0; // We will subtract from this later, as we construct the binary sequence
bin = ""; // Start with empty sequence; to be constructed later

if argument1 { // If the integer should be signed
 _sign = sign(new_int);
 if _sign = -1 { // If the integer is negative
  bin += "0"; // 0 >> negative
  new_int = -new_int; // Switch to positive
 }
 else // If the integer is positive or zero
  bin += "1"; // 1 >> positive
}
else {
 if new_int < 0 {
  show_message("int2bin script error: Negative integers must be signed");
  return "";
 }
}

if argument2 == 0 // If we're using minimum bits
 _power = floor(logn(2,new_int)); // Calculate min
else // If the bit count is specified
 _power = argument2 - 1; // Start with the appropriate bit

for (_power = _power; _power >= 0; _power -= 1) {
 value = power(2,_power);
 if new_int >= value {
  bin += "1";
  new_int -= value;
 }
 else
  bin += "0";
}

return bin;
