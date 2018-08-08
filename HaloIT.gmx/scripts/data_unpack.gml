// data_unpack(packed_data)
// Unpacks data stored with data_pack function and stores the individual values in an array
// packed_data: value from data_pack function
// Returns the number of individual values found in package
// Access the unpacked data through variables data[0], data[1], etc.
// Note: Error checking is omitted in this script since there are so many possible errors
// (But, if the input argument is identical to the return value of data_pack there should be none)

var package, components, is_str, sizeofsize, data_size;

package = argument0; // Load package
package = str2bin(package); // Convert to binary sequence
package = string_delete(package,1,string_pos("1",package)); // Delete null space & marker

components = 0;

while string_length(package) > 0 { // Until the package is empty
 is_str = string_char_at(package,1);
 is_str = real(is_str);
 package = string_delete(package,1,1); // Delete is_string bit, since we don't need it any more
 sizeofsize = string_pos("1",package) - 1; // Get the size of the size data
 package = string_delete(package,1,sizeofsize); // Got it already, so delete it
 data_size = string_copy(package,1,sizeofsize); // Get the size in binary
 data_size = bin2int(data_size,0); // Convert size to integer
 package = string_delete(package,1,sizeofsize); // Delete unneeded data
 data[components] = string_copy(package,1,data_size); // Get the content in binary
 //Convert from binary sequence to appropriate data type
 if is_str
  data[components] = bin2str(data[components]);
 else
  data[components] = bin2int(data[components],1);
 package = string_delete(package,1,data_size);
 components += 1;
}

return components;
