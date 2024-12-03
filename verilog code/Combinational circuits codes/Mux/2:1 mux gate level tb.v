module tb_mux_2to1;
  reg A;
  reg B;
  reg S;
  wire Y;
  mux_2to1 uut (
    .A(A), 
    .B(B), 
    .S(S), 
    .Y(Y)
  );
  initial begin
    A = 0;
    B = 0;
    S = 0;
    $monitor("At time %t: S = %b, A = %b, B = %b -> Y = %b", $time, S, A, B, Y);
    #10 A = 0; B = 1; S = 0;
    #10 A = 1; B = 0; S = 1;
    #10 A = 1; B = 1; S = 0;
    #10 A = 0; B = 1; S = 1;
    #10 A = 1; B = 1; S = 1;
    #10 A = 0; B = 0; S = 0;
    #50 $finish;
  end
endmodule
