module tb_mux_2to1_behavioral;
  reg A;
  reg B;
  reg S;
  wire Y;
  mux_2to1_behavioral uut (
    .A(A), 
    .B(B), 
    .S(S), 
    .Y(Y)
  );
  initial begin
    S = 0; A = 1; B = 0;  
    #10 $display("For S = %b, A = %b, B = %b -> Y = %b", S, A, B, Y);
    S = 1; A = 1; B = 0;  
    #10 $display("For S = %b, A = %b, B = %b -> Y = %b", S, A, B, Y);
    $finish;
  end
endmodule
