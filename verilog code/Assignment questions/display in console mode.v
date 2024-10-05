module tb;
reg[13*8:1]s;
initial
begin
s= "hello world";
$display("Value= %s",s[104:65]);
end
endmodule
