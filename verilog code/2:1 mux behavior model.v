module mux_2to1_behavioral (
  input wire A,   
  input wire B,   
  input wire S,   
  output reg Y);
  always @(*) begin
    if (S == 1'b0) 
      Y = A;
    else 
      Y = B;
  end 
endmodule
