/*20. Write a test bench to test string data type and its predefined methods by using the following
statements
a. declare a string data type and assign it to“SystemVerilog”
b. use the getc() method to display the ASCII value of the first character of this
string
c. use toupper() method to display the string in capital letter
d. concatenate the string with string “3.1a” and display
e. replace the last character in the string with character ‘b’ using len() method
and display
f. use substr() method to display substring from 2nd to 5th character*/

module test_string_methods;
  string str = "SystemVerilog";
  string str2 = "3.1a"; 
  initial begin
    $display("Original string: %s", str);
    $display("ASCII value of first character: %0d", str.getc(0));
    $display("String in uppercase: %s", str.toupper());
    $display("Concatenated string: %s", {str, str2});
    str.putc(str.len() - 1, "b");
    $display("String after replacing last character: %s", str);
    $display("Substring from 2nd to 5th character: %s", str.substr(1, 4)); 
  end
endmodule

/*Output
Original string: SystemVerilog
ASCII value of first character: 83
String in uppercase: SYSTEMVERILOG
Concatenated string: SystemVerilog3.1a
String after replacing last character: SystemVerilob
Substring from 2nd to 5th character: yste*/
