module mux_2to1_dataflow (
  input wire A,   
  input wire B,   
  input wire S,   
  output wire Y  
);

  assign Y = S ? B : A;  
endmodule
