module tb;
wire D, B;
reg x, y;
  Half_Sub dut (D, B, x, y);
initial begin
    x = 0; y = 0;
#1  x = 0; y = 1;
#1  x = 1; y = 0;
#1  x = 1; y = 1;
end
initial begin
  $monitor ("%t, x = %d| y = %d| B = %d| D = %d", $time, x, y, B, D);
    $dumpfile("dump.vcd");
    $dumpvars(0);
end
endmodule
