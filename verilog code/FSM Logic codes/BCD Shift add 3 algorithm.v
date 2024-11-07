module binary_to_bcd(input wire clk,
                     input wire reset,
                     input wire [3:0] binary_in,  
                     output reg [7:0] BCD_out);

  reg [3:0] binary_shift;      
  reg [3:0] tens, ones;  
  reg [3:0] counter;

  always @(posedge clk or posedge reset) begin
    if (reset) begin
      binary_shift <= binary_in;  
      tens <= 4'b0;               
      ones <= 4'b0;              
      counter <= 3'b100;         
    end else if (counter != 0) begin
      if (tens >= 5)
        tens <= tens + 3;
      if (ones >= 5)
        ones <= ones + 3;
      
      tens <= {tens[2:0], ones[3]};      
      ones <= {ones[2:0], binary_shift[3]}; 
      binary_shift <= binary_shift << 1;    
      counter <= counter - 1;
    end else begin
      BCD_out <= {tens, ones};  
    end
  end

endmodule
