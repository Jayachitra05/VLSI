module sum_example;
    reg [7:0] num1, num2;
    reg [7:0] result;

    function [7:0] calculate_sum;
        input [7:0] a, b;
        begin
            calculate_sum = a + b; 
        end
    endfunction

    initial begin
        num1 = 8'd25;
        num2 = 8'd30;
   result = calculate_sum(num1, num2);       
      $display("Sum: %d", result);
    end
endmodule
/*output
55*/
