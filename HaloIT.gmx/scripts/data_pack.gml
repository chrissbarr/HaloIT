// data_pack(data_count, data0, data1, data2, ...)
// Packs the given data into a single value and returns it as a condensed string
// data_count: number of data pieces (so the script knows which arguments to omit)
// data[n]: piece of data
// Note: data can consist of strings, integers, or both
// Note #2: Do not convert data to binary format; this is done for you

var package, i, data, bin_part, len, overhead, bin_size, bin_sizeofsize, null_space;

package = "";

for (i = 0; i < argument0; i += 1) { // For each data piece
 data = argument[i+1];
 if is_string(data) // If this data is a string
  bin_part = str2bin(data);
 else // If this data is an integer
  bin_part = int2bin(data,1);
 bin_size = string_length(bin_part); // Store number of bits
 bin_size = int2bin(bin_size,0); // Convert size to binary sequence
 bin_sizeofsize = "";
 repeat string_length(bin_size) // For each bit in the size
  bin_sizeofsize += "0"; // Add a negative bit to sizeofsize, so that we can quantify the size later
 overhead = string(is_string(data)) + bin_sizeofsize + bin_size;
 package += overhead + bin_part;
}

package = "1" + package; // Marks end of null space that we're about to add

while string_length(package) mod 8 != 0 // While the sequence length is not a multiple of 8
 package = "0" + package; // Add null bits until it is

package = bin2str(package); // Convert from binary sequence to 8-bit string format

return package;
