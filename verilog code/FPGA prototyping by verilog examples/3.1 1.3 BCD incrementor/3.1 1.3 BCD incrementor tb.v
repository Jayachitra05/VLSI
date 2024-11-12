module BCD_incrementor_tb;
    reg [11:0] bcd_in;
    wire [11:0] bcd_out;
    BCD_incrementor dut (.bcd_in(bcd_in),.bcd_out(bcd_out) );
    initial begin
        bcd_in = 12'b0000_0010_0101;
        #10;
        $display("Input: %b, Output: %b", bcd_in, bcd_out);
        bcd_in = 12'b0000_0001_0000; 
        #10;
        $display("Input: %b, Output: %b", bcd_in, bcd_out);
        bcd_in = 12'b0000_0000_0000; 
        #10;
        $display("Input: %b, Output: %b", bcd_in, bcd_out);
    end
 initial begin
    $dumpfile("dump.vcd");
    $dumpvars();
  end   
endmodule
