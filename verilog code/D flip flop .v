module d_ff(output reg q, input d, input clk, input rst);
  always @(posedge clk) begin
    if(rst)
      q<=0;
    else
      q<=d;
  end
  
endmodule 
