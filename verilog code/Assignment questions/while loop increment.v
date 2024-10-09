module while_example;
    reg [3:0] acc;

    initial begin
        acc = 4'b0000; 
        while (acc < 4'b1000) begin 
            acc = acc + 1;  
        end
        $display("Final value of acc = %b", acc);
    end
endmodule
/* output
1000*/
