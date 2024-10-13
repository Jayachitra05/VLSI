module tb;
  reg [7:0] d;
  wire [2:0] y;
  int i;  
  binary_encoder dut (d, y);
   initial begin
    d=8'b1; #1;
    for(i=0; i<8; i++) begin
      $display("d = %h(in dec:%0d), y = %0h", d, i, y);
      d=d<<1; #1;
    end
  end
endmodule
