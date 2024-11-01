module tb_half_adder;
    reg a;
    reg b;
    reg clk;
    wire sum;
    wire carry;
    half_adder uut (
        .a(a),
        .b(b),
        .clk(clk),
        .sum(sum),
        .carry(carry)
    );
    initial begin
        clk = 0;
        forever #5 clk = ~clk;
    end
    initial begin
        #10 a = 0; b = 0;   
        #10 a = 0; b = 1;    
        #10 a = 1; b = 0;  
        #10 a = 1; b = 1;  
        #10 $finish;
    end
    initial begin
        $monitor("Time=%0d | a=%b b=%b | sum=%b carry=%b", $time, a, b, sum, carry);
    end
endmodule
