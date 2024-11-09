  module encoder_4_2_priority_bh (
    input [3:0] a,       
    output reg [1:0] y,  
    output reg v        
);
    always @(*) begin
      if (a[3])      
        {v, y} = 3'b111; 
      else if (a[2]) 
        {v, y} = 3'b110; 
      else if (a[1])  
        {v, y} = 3'b101;
      else if (a[0])  
        {v, y} = 3'b100; 
        else            
        {v, y} = 3'b000; 
    end
endmodule  
