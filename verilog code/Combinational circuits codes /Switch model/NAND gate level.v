module nand_gate(c,a,b);
input a,b;
output c;
  wire y;
  and (y,a,b);
  not (c,y);
endmodule
