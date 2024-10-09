module test;
reg [3:0] x;
initial begin
    x = 4'b0011;  
    fork
        #5 x = x + 1;  
        #10 x = x + 2; 
    join
  $display("Final value of x = %0d", x);
end
endmodule



/*output
x=x+1// x=4
x=x+2// x=6
final output x=6*/
