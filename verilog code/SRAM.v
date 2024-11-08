module sram (
    input wire clk,               
    input wire cs,                  
    input wire oe,                 
    input wire we,                 
    input wire [15:0] address,     
    inout wire [7:0] data          
);
  reg [7:0] memory_array [65535:0];
    reg [7:0] data_out;
    assign data = (cs == 0 && oe == 0 && we == 1) ? data_out : 8'bz;
    always @(posedge clk) begin
        if (cs == 0 && we == 0) begin
            memory_array[address] <= data; 
        end     
        if (cs == 0 && we == 1 && oe == 0) begin
            data_out <= memory_array[address]; 
        end
    end
endmodule
