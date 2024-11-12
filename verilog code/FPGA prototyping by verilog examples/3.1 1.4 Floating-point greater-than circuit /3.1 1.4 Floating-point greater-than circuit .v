module floatingpoint_grt_cir(
input sign1, sign2, 
input [3:0]exp1, exp2, 
input[7:0] frac1, frac2,
output reg gt
);
  always@(*)begin
    if(sign1==0 && sign2==1) begin
      gt = 1;  
    end
    else if(sign1==1 && sign2==0) begin
      gt = 0;
    end
    else begin
      if(exp1 > exp2) begin
        gt = ~sign1;
      end
      else if(exp1 < exp2) begin
        gt = sign1;
      end
      else begin
        gt = (frac1 > frac2) ? ~sign1 : sign1;
      end
    end
  end
endmodule
