module tb;
  reg [1:0] data;
  wire [3:0] out; 
  casez_example casez_ex(data, out);
  initial begin
    $monitor("data = %b -> out = %0h", data, out);
       data = 2'bx1;
    #1 data = 2'b0x;
    #1 data = 2'bx0;
    #1 data = 2'b1x;
  end
endmodule
