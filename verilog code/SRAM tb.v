module sram_tb;
    reg clk;  
    reg cs;
    reg oe;         
    reg we;         
    reg [15:0] address;     
    reg [7:0] data_in;      
    wire [7:0] data;             
    reg [7:0] data_out;           
    assign data = (we == 0) ? data_in : 8'bz;
    sram uut (
        .clk(clk),
        .cs(cs),
        .oe(oe),
        .we(we),
        .address(address),
        .data(data)
    );

    initial begin
        clk = 0;
        forever #5 clk = ~clk; 
    end
    initial begin
        cs = 1; 
        oe = 1;      
        we = 1;     
        address = 0;  
        data_in = 8'h00;
        #10;
        cs = 0;      
        #10;
        address = 16'h0001; 
        data_in = 8'hAA;   
        we = 0;             
        #10;
        we = 1;  
        #10;
        address = 16'h0001; 
        oe = 0;            
        #10;
        data_out = data;    
        oe = 1;           
        if (data_out == 8'hAA) begin
            $display("Read/Write Test Passed: Data = %h", data_out);
        end else begin
            $display("Read/Write Test Failed: Data = %h", data_out);
        end
        #10;
        address = 16'h0002; 
        data_in = 8'h55;    
        we = 0;        
        #10;
        we = 1;        
        #10;
        address = 16'h0002; 
        oe = 0;           
        #10;
        data_out = data;   
        oe = 1;            
        if (data_out == 8'h55) begin
            $display("Read/Write Test Passed: Data = %h", data_out);
        end else begin
            $display("Read/Write Test Failed: Data = %h", data_out);
        end
        #20;
        $finish;
    end
endmodule
