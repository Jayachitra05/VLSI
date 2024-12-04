module half(a,b,s,c);
input a,b;
output c,s;
assign c=a&b;
assign s=a^b;
endmodule

module full(a,b,cin,s,c);
input a,b,cin;
output s,c;
wire n1,n2,n3;
half x1(a,b,n1,n2);
half x2(n1,cin,s,n3);
or(c,n2,n3);
endmodule
