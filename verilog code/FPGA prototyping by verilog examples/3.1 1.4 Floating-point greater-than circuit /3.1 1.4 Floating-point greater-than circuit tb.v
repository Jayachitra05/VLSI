module tb;
  reg sign1, sign2;
  reg [3:0] exp1, exp2;
  reg [7:0] frac1, frac2;
  wire gt;
  
  floatingpoint_grt_cir gt_cir(sign1, sign2, exp1, exp2, frac1, frac2, gt);
  
  initial begin
    $monitor("At time %t : sign1=%b, sign2=%b, exp1=%b, frac1=%b, exp2=%b, frac2=%b, gt=%b", $time, sign1, sign2, exp1, frac1, exp2, frac2, gt); 
    sign1 = 0; exp1 = 4'b0101; frac1 = 8'b1100_0000;
    sign2 = 0; exp2 = 4'b0101; frac2 = 8'b1010_0000;
    #10;
    sign1 = 1; exp1 = 4'b0101; frac1 = 8'b1100_0000;
    sign2 = 0; exp2 = 4'b0101; frac2 = 8'b1010_0000;
    #10;
    sign1 = 0; exp1 = 4'b0100; frac1 = 8'b1100_0000;
    sign2 = 1; exp2 = 4'b0100; frac2 = 8'b1000_0000;
    #10;
    sign1 = 0; exp1 = 4'b0100; frac1 = 8'b1100_0000;
    sign2 = 0; exp2 = 4'b0100; frac2 = 8'b1100_0000;
    #10;
  end
  initial begin
    $dumpfile("waves.vcd");
    $dumpvars;
  end
endmodule
