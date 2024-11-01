module dff_gate_level(
  input d,clk,
  output q,q'
);
  wire d',n1,n2;
  not g1(d',d);
  nand g2(n1,d,clk);
  nand g3(n2,d',clk);
  nand g4(q,n1,q');
  nand g5(q',n2,q);
endmodule
