// Code your design here
module fp_adder (
    input wire sign1, sign2,
    input wire [3:0] exp1, exp2,
    input wire [7:0] frac1, frac2,
    output reg sign_out,
    output reg [3:0] exp_out,
    output reg [7:0] frac_out
);
    reg signb, signs;
    reg [3:0] expb, exps, exp_diff, expn;
    reg [7:0] fracb, fracs, frac_align, sum_norm;
    reg [10:0] sum; 
    reg [2:0] lead0;
    reg guard, round, sticky; 

  
    always @* begin
        if ({exp1, frac1} > {exp2, frac2}) begin
            signb = sign1;
            expb = exp1;
            fracb = frac1;
            signs = sign2;
            exps = exp2;
            fracs = frac2;
        end else begin
            signb = sign2;
            expb = exp2;
            fracb = frac2;
            signs = sign1;
            exps = exp1;
            fracs = frac1;
        end
        exp_diff = expb - exps;
        frac_align = fracs >> exp_diff;
        if (signb == signs) 
            sum = {1'b0, fracb} + {1'b0, frac_align};
        else 
            sum = {1'b0, fracb} - {1'b0, frac_align};

        guard = sum[2];
        round = sum[1];
        sticky = |sum[0]; 
        if (sum[8]) begin 
            expn = expb + 1;
            sum_norm = sum[8:1];
        end else begin
            lead0 = sum[7:4] ? (sum[7:6] ? (sum[7] ? 0 : 1) : (sum[5] ? 2 : 3)) : 4;
            sum_norm = sum << lead0;
            expn = expb - lead0;
        end
        if (guard && (round || sticky)) 
            sum_norm = sum_norm + 1;
        if (expn == 0) begin
            exp_out = 0;
            frac_out = 0;
        end else begin
            exp_out = expn;
            frac_out = sum_norm[7:0];
        end
        sign_out = signb;
    end
endmodule

