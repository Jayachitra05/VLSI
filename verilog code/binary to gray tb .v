module tb_binary_to_gray;
  reg  [3:0] binary;     
  wire [3:0] gray;        
  binary_to_gray uut (
    .binary(binary),
     .gray(gray)
  ); 
  initial begin
    $monitor(" binary Code = %b | gray Code = %b",binary,gray);
    binary = 4'b0000; #5;
    binary = 4'b0001; #5;
    binary = 4'b0011; #5;
    binary = 4'b0010; #5;
    binary = 4'b0110; #5;
    binary = 4'b0111; #5;
    binary = 4'b0101; #5;
    binary = 4'b0100; #5;
    binary = 4'b1100; #5;
    binary = 4'b1101; #5;
    binary = 4'b1111; #5;
    binary = 4'b1110; #5; 
    $finish;
  end 
endmodule
