module top_tb;
    reg [11:0] r_test;
    wire [3:0] p1_test;
    wire [3:0] p2_test;
    top dut (.r(r_test), .p1(p1_test), .p2(p2_test));
    initial
    begin
       $monitor("Time = %0t | r_test = %b | p1_test = %b | p2_test = %b", $time, r_test, p1_test, p2_test);
        r_test = 12'b100000000000;
        # 10;
        r_test = 12'b000010000000;
        # 10;
        r_test = 12'b000011000000;
        # 10;
        r_test = 12'b000010100000;
        # 10;
        r_test = 12'b000010001000;
        # 10;
        r_test = 12'b000010101000;
        # 10;
        r_test = 12'b100000000001;
        # 10;
        r_test = 12'b000000000000;
        # 10;
        $stop;
    end
initial begin 
        $dumpfile("waves.vcd");
        $dumpvars();
end
endmodule
