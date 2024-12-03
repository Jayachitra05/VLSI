module tb_mux4_1Technique1;
    reg i0, i1, i2, i3;
    reg s0, s1;
    wire out;
    mux4_1Technique1 dut (
        .out(out), 
        .i0(i0), 
        .i1(i1), 
        .i2(i2), 
        .i3(i3), 
        .s0(s0), 
        .s1(s1)
    );
    initial begin

        i0 = 0; i1 = 0; i2 = 0; i3 = 0;
        s0 = 0; s1 = 0;

        #10 i0 = 1; s0 = 0; s1 = 0;  
        #10 i1 = 1; s0 = 1; s1 = 0; 
        #10 i2 = 1; s0 = 0; s1 = 1; 
        #10 i3 = 1; s0 = 1; s1 = 1; 
       
       $finish;
    end

    initial begin
        $monitor("At time %0t: s1=%b s0=%b | i3=%b i2=%b i1=%b i0=%b => out=%b",
 $time, s1, s0, i3, i2, i1, i0, out);
    end

endmodule
