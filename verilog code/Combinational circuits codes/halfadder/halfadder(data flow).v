module halfadder (a,b,s,c);
  input wire a;
  input wire b;
  output reg s;
  output reg c;
  assign s = a^b;
  assign c = a&b;
endmodule
