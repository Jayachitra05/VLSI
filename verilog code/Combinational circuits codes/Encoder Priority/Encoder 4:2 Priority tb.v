module encoder_4_2_priority_tb;
  reg [3:0] a;
  wire [1:0]y;
  wire v;
encoder_4_2_priority_bh dut (
      .a(a),.y(y),.v(v));
    initial begin
      $monitor("Time = %0t | a = %b | v = %b | y = %b", $time, a, v, y);
        a = 4'b0000; #10;  
        a = 4'b0001; #10;  
        a = 4'b0010; #10;  
        a = 4'b0100; #10;  
        a = 4'b1000; #10;  
        a = 4'b0011; #10;  
        a = 4'b0110; #10;  
        a = 4'b1111; #10;  
        $finish;
    end
endmodule
