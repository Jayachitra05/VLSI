module comparator(
  input [3:0] a,b,
  output reg x, y, z);
  always@(*)begin
    x=0;y=0;z=0;
    if(a>b)
      x= 1'b1;
    else if(a<b)
      y= 1'b1;
    else
      z= 1'b1;
  end
endmodule
