module forever_example;  
  integer count = 0;
  initial begin
    forever begin 
      $display("Value of count = %0d", count);
      count++;
      #5;
    end
  end
  
  initial begin
    #30;
    $finish;
  end
endmodule
# KERNEL: Value of count = 0
# KERNEL: Value of count = 1
# KERNEL: Value of count = 2
# KERNEL: Value of count = 3
# KERNEL: Value of count = 4
# KERNEL: Value of count = 5
