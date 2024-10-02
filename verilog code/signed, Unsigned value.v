module DataTypeExample;

  int signedInt = -10;
  int unsigned unsignedInt = 20;
  bit [15:0] sixteenBitData;
  logic [31:0] thirtyTwoBitData;
  reg [63:0] sixtyFourBitData;
  bit [7:0] twoStateData;
  logic [7:0] fourStateData;

  initial begin
    $display("Signed integer: %d, Unsigned integer: %0u", signedInt, unsignedInt);
    sixteenBitData = 16'b1100110011001100;
    thirtyTwoBitData = 32'hAABBCCDD;
    sixtyFourBitData = 64'h1122334455667788;
    $display("16-bit data: %h", sixteenBitData);
    $display("32-bit data: %h", thirtyTwoBitData);
    $display("64-bit data: %h", sixtyFourBitData);
    twoStateData = 8'b1;
    fourStateData = 8'bZ0;
    $display("2-state data: %b", twoStateData);
    $display("4-state data: %b", fourStateData);
  end
endmodule
