module nand_gate(f,a,b);
  input a,b;
  output f;
  wire w;
  supply1 vdd;
  supply0 gnd;
  pmos p1(f,vdd,a);
  pmos p2(f,vdd,b);
  nmos n1(f,w,a);
  nmos n2(w,gnd,b);
endmodule
