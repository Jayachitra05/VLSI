module tb;
  reg a,b;
  wire s,c;
  halfadder half(.a(a),.b(b),.s(s),.c(c));
  initial begin
    $monitor("at time %t:a=%b,b=%b,s=%b,c=%b",$time,a,b,s,c);
    #2 a=0;b=0;
    #2 a=0;b=1;
    #2 a=1;b=0;
    #2 a=1;b=1;
  end
endmodule
