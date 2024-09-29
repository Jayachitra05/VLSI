module tb_full();
reg a,b,cin;
wire s,c;
full dut(a,b,cin,s,c);
initial
begin
	   a=1'b0;b=1'b0;cin=1'b0;
	#5 a=1'b0;b=1'b0;cin=1'b1;
	#5 a=1'b0;b=1'b1;cin=1'b0;
	#5 a=1'b1;b=1'b0;cin=1'b0;
	#5 a=1'b1;b=1'b0;cin=1'b1;
	#5 a=1'b1;b=1'b1;cin=1'b0;
	#5 a=1'b1;b=1'b1;cin=1'b1;
	#100 $finish;
end
initial begin
      $monitor ("%t a=%b,b=%b,cin=%b,s=%b,c=%b",$time,a,b,cin,s,c);
end
endmodule
