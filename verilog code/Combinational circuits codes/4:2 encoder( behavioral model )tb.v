module tb_encoder_4to2;
    reg [3:0] A;
    wire [1:0] Y;
    wire valid;
    encoder_4to2_behav uut_behav (.A(A),.Y(Y),.valid(valid) );
    initial begin
        $monitor("Time: %0dns, A: %b, Y: %b, valid: %b",$time, A, Y, valid);         
        A = 4'b0000; #10;
        A = 4'b0001; #10;
        A = 4'b0010; #10;
        A = 4'b0100; #10;
        A = 4'b1000; #10;
        A = 4'b1111; #10; 
        A = 4'b0011; #10; 
        A = 4'b0110; #10;
        A = 4'b1001; #10; 
        $finish;
    end
endmodule
