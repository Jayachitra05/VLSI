module tff_asyn_rst(  
    input clk,rst,t,
    output reg q,
    output q'
);
  always@(posedge clk or negedge rst) begin
    if(!rst) q<=0;
    else begin
      q <= t?~q:q;
    end
  end
  assign q'=~q;
endmodule
