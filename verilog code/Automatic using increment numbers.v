module automatic_increment;

  task automatic increment(input integer incr);

    integer i;
    begin
      i = 1;
      i = i + incr;
      $display("Result of increment = %0d", i);
    end
  endtask

  initial begin
    increment(1);  
    increment(2); 
    increment(3);  
  end
endmodule
