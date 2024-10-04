module arithmetic_operators;
  reg signed [4:0] a, b, y1;
  reg signed [6:0] y2;
    real a1;
    real y3;

    initial begin
        a = 5'd5;
        b = 5'd9;
        a1 = 5;
        y1 = a + b;
      $display("%0d + %0d = %0d", a, b, y1);
        y1= a - b;
      $display("%0d - %0d = %0d", a, b, y1);
        y2 = a * b;
        $display("%0d * %0d = %0d", a, b, y2);
        y1 = a / b;
      $display("%0d / %0d = %0d", a, b, y1);
      	y3 = a / b; 
      y3 = a1 / b; 
      	$display("%0d / %0d = %f ", a, b, y3);
        $display("%0d / %0d = %f", a1, b, y3);
        y1 = b % a;
      $display("%0d %% %0d = %0d", b, a, y1);
    end
endmodule
