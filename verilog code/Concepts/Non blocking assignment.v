module nonblocking();
reg a, b, c ;
initial begin
  $monitor("%g a=%b b=%b c=%b",
    $time,a,b,c);
  a <= #10 1'b1;
  b <= #2 1'b0;
  c  <=1'b1;
end
endmodule
