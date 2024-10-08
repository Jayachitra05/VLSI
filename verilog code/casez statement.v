module casez_example(
  input  [1:0] data,
  output reg [3:0] out); 
  always @(*) begin
    casez(data)
      2'b0z: out = 1;
      2'bz0: out = 2;
      2'b1z: out = 3;
      2'bxz: out = 4;
    endcase
  end
endmodule
