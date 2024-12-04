module nand_test;
reg a,b;
wire c;
nand_gate  nand_test(c,a,b);
initial begin
     a=0;b=0;
  #10;
     a=0;b=1;
  #10;
     a=1;b=0;
  #10;
     a=1;b=1;
  #10;
end
initial begin
  $monitor("Time %0t : a = %b,b = %b,c = %b",$time,a,b,c,);
end
endmodule
