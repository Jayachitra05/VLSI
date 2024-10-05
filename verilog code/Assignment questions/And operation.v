module and_operation_tb;
  reg [2:0] a, b;  
  reg y;          
  initial begin
    a = 3'd5;        
    b = 3'b111;      
    y = a && b;     
    $monitor("At time %0t: a = %0b, b = %0b, y = %0b", $time, a, b, y);  
    #10 $finish;     
  end
endmodule
