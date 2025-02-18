`include "uvm_macros.svh"
import uvm_pkg::*;
`include "interface.sv"
`include "seq_item.sv"
`include "sequence.sv"
`include "sequencer.sv"
`include "driver.sv"
`include "monitor.sv"
`include "agent.sv"
`include "scoreboard.sv"
`include "environment.sv"
`include "test.sv"
module top;
  logic clk;
  dff dut(.clk(intf.clk),.rst(intf.rst),.d(intf.d),.q(intf.q));
  dff_intf intf(.clk(clk));
  initial begin
    uvm_config_db#(virtual dff_intf)::set(null,"*","vif",intf);
  end
  initial begin
    clk = 0;
    intf.rst = 1;
    #20 intf.rst = 0;
  end
  always #10 clk = ~clk;
  initial begin
    $monitor($time, "clk = %d", clk);
    $dumpfile("dump.vcd"); 
    $dumpvars;
  end
  initial begin 
    run_test("dff_test");
  end 
endmodule
