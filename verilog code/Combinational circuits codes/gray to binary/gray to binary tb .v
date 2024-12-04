module tb_gray_to_binary;
  reg  [3:0] gray;     
  wire [3:0] binary;        
  gray_to_binary uut (
    .gray(gray),
    .binary(binary)
  ); 
  initial begin
    $monitor("Gray Code = %b | Binary Code = %b", gray, binary);
    gray = 4'b0000; #5;
    gray = 4'b0001; #5;
    gray = 4'b0011; #5;
    gray = 4'b0010; #5;
    gray = 4'b0110; #5;
    gray = 4'b0111; #5;
    gray = 4'b0101; #5;
    gray = 4'b0100; #5;
    gray = 4'b1100; #5;
    gray = 4'b1101; #5;
    gray = 4'b1111; #5;
    gray = 4'b1110; #5; 
    $finish;
  end 
endmodule
