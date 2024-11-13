/*9. Write a module that reverses a given string. For example, reverse "SystemVerilog" to get
"golireVmetsyS*/

module reverse_string;
  string original_str = "SystemVerilog";
  string reversed_str = "";
  initial begin
    for (int i = original_str.len() - 1; i >= 0; i--) begin
      reversed_str = {reversed_str, original_str[i]};
    end
    $display("Original string: %s", original_str);
    $display("Reversed string: %s", reversed_str);
  end
endmodule

/*Output
Original string: SystemVerilog
Reversed string: golireVmetsyS*/
