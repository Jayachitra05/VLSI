module nand_gate(f,a,b);
  input a,b;
  output f;
  wire w;
  and(w, a, b);
  not(f, w);
endmodule
