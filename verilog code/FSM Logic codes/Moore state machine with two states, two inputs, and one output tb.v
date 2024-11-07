module tb_moore_state_machine;
    reg clk;
    reg rst;
    reg A;
    reg B;
    wire Y;
    moore_state_machine uut (.clk(clk),.rst(rst),.A(A),.B(B),.Y(Y) );
    always #5 clk = ~clk; 
    initial begin
   
        clk = 0;
        rst = 1;
        A = 0;
        B = 0;
        #10;
        rst = 0;
        #10;
        A = 1; B = 0;
        #10;  
        #10;
        A = 0; B = 0;
        #10;  
        #10;
        A = 0; B = 1;
        #10;  
        #10;
        A = 0; B = 0;
        #10;
      $stop;
    end
  initial begin
    $monitor(
    "Time = %0t | rst = %b , A = %b , B = %b,  Y = %b ", $time, rst, A, B, Y);
  end
  endmodule
