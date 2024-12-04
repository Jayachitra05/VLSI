module switch_model (
  input a, ctrl,
  output b, c);  
  pmos p1(b,a, ctrl);
  nmos n1(c,a, ctrl);  
endmodule
