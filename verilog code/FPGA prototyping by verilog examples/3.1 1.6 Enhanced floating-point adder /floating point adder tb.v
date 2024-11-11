module fp_adder_tb;
    reg sign1, sign2;
    reg [3:0] exp1, exp2;
    reg [7:0] frac1, frac2;
    wire sign_out;
    wire [3:0] exp_out;
    wire [7:0] frac_out;
    fp_adder uut (.sign1(sign1),.sign2(sign2),.exp1(exp1),.exp2(exp2),.frac1(frac1),.frac2(frac2),.sign_out(sign_out),.exp_out(exp_out),.frac_out(frac_out));

    initial begin
        $display("sign1 sign2 exp1 exp2 frac1 frac2 | sign_out exp_out frac_out");
        sign1 = 0; sign2 = 0; exp1 = 4'b0011; exp2 = 4'b0100; frac1 = 8'b01010101; frac2 = 8'b00110011;
        #10; 
        $display("%b %b %b %b %b %b %b %b", sign1, sign2, exp1, exp2, frac1, frac2, sign_out, exp_out, frac_out);
        sign1 = 0; sign2 = 1; exp1 = 4'b0101; exp2 = 4'b0110; frac1 = 8'b11110000; frac2 = 8'b00001111;
        #10; 
        $display("%b %b %b %b %b %b %b %b", sign1, sign2, exp1, exp2, frac1, frac2, sign_out, exp_out, frac_out);
        sign1 = 1; sign2 = 0; exp1 = 4'b1000; exp2 = 4'b0111; frac1 = 8'b11001100; frac2 = 8'b10101010;
        #10;  
         $display("%b %b %b %b %b %b %b %b", sign1, sign2, exp1, exp2, frac1, frac2, sign_out, exp_out, frac_out);

        sign1 = 0; sign2 = 0; exp1 = 4'b0001; exp2 = 4'b0001; frac1 = 8'b00000001; frac2 = 8'b00000010;
        #10; 
        $display("%b %b %b %b %b %b %b %b", sign1, sign2, exp1, exp2, frac1, frac2, sign_out, exp_out, frac_out);
        sign1 = 1; sign2 = 1; exp1 = 4'b1001; exp2 = 4'b1010; frac1 = 8'b11111111; frac2 = 8'b00000000;
        #10; 
        $display("%b %b %b %b %b %b %b %b", sign1, sign2, exp1, exp2, frac1, frac2, sign_out, exp_out, frac_out);
        sign1 = 0; sign2 = 0; exp1 = 4'b0111; exp2 = 4'b0111; frac1 = 8'b00000001; frac2 = 8'b00000001;
        #10; 
        $display("%b %b %b %b %b %b %b %b", sign1, sign2, exp1, exp2, frac1, frac2, sign_out, exp_out, frac_out);
        $finish;
    end
    initial begin
      $dumpfile("dump.vcd");
        $dumpvars(0);
    end

endmodule
